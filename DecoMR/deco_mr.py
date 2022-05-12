#!/usr/bin/env python3

import torch
from torchvision.transforms import Normalize

import numpy as np
import cv2
import json
from DecoMR.models.dmr import DMR
from DecoMR.utils.imutils import crop
import DecoMR.utils.config as cfg
from collections import namedtuple
from os.path import join, exists


def bbox_from_openpose(openpose_file, rescale=1.2, detection_thresh=0.2):
    """Get center and scale for bounding box from openpose detections."""
    with open(openpose_file, 'r') as f:
        keypoints = json.load(f)['people'][0]['pose_keypoints_2d']
    keypoints = np.reshape(np.array(keypoints), (-1, 3))
    valid = keypoints[:, -1] > detection_thresh
    valid_keypoints = keypoints[valid][:, :-1]
    center = valid_keypoints.mean(axis=0)
    bbox_size = (valid_keypoints.max(axis=0) - valid_keypoints.min(axis=0)).max()
    # adjust bounding box tightness
    scale = bbox_size / 200.0
    scale *= rescale
    return center, scale


def bbox_from_json(bbox_file):
    """Get center and scale of bounding box from bounding box annotations.
    The expected format is [top_left(x), top_left(y), width, height].
    """
    with open(bbox_file, 'r') as f:
        bbox = np.array(json.load(f)['bbox']).astype(np.float32)
    ul_corner = bbox[:2]
    center = ul_corner + 0.5 * bbox[2:]
    width = max(bbox[2], bbox[3])
    scale = width / 200.0
    # make sure the bounding box is rectangular
    return center, scale


def process_image(img, bbox_file, openpose_file, input_res=224):
    """Read image, do preprocessing and possibly crop it according to the bounding box.
    If there are bounding box annotations, use them to crop the image.
    If no bounding box is specified but openpose detections are available, use them to get the bounding box.
    """
    normalize_img = Normalize(mean=cfg.IMG_NORM_MEAN, std=cfg.IMG_NORM_STD)
    if bbox_file is None and openpose_file is None:
        # Assume that the person is centerered in the image
        height = img.shape[0]
        width = img.shape[1]
        center = np.array([width // 2, height // 2])
        scale = max(height, width) / 200
    else:
        if bbox_file is not None:
            center, scale = bbox_from_json(bbox_file)
        elif openpose_file is not None:
            center, scale = bbox_from_openpose(openpose_file)
    img = crop(img, center, scale, (input_res, input_res))
    img = img.astype(np.float32) / 255.
    img = torch.from_numpy(img).permute(2, 0, 1)
    norm_img = normalize_img(img.clone())[None]
    return img, norm_img


model_checkpoint = "D:\\correspondence/DecoMR/data/model/h36m_up3d/checkpoints/h36m_up3d.pt"
img_file = "examples/im1010.jpg"
model = None

def load_model():
    tmp = model_checkpoint.split('/')[:-2]
    tmp.append('config.json')
    config = join(*tmp)
    with open(config, 'r') as f:
        options = json.load(f)
        options = namedtuple('options', options.keys())(**options)
    model = DMR(options, model_checkpoint)
    model.eval()
    return model

def execute(img):
    global model

    # norm_img = torch.from_numpy(norm_img).permute(2, 0, 1)

    # file = "D:/correspondence/DecoMR/examples/im1010_openpose.json"
    img, norm_img = process_image(img, None, openpose_file=None, input_res=cfg.INPUT_RES)

    if not model: # Load model
        model = load_model()

    with torch.no_grad():
        out_dict = model(norm_img.to(model.device))
        pred_vertices = out_dict['pred_vertices']
        pred_camera = out_dict['camera']

    # Calculate camera parameters for rendering
    camera_translation = torch.stack(
        [pred_camera[:, 1], pred_camera[:, 2], 2 * cfg.FOCAL_LENGTH / (cfg.INPUT_RES * pred_camera[:, 0] + 1e-9)],
        dim=-1)
    camera_translation = camera_translation[0].cpu().numpy()
    pred_vertices = pred_vertices[0].cpu().numpy()

    return pred_vertices, camera_translation


if __name__ == '__main__':

    img = cv2.imread(img_file)[:, :, ::-1].copy()  # PyTorch does not support negative stride at the moment
    file = "examples/im1010_openpose.json"
    img, norm_img = process_image(img, None, openpose_file=file, input_res=cfg.INPUT_RES)
    execute(norm_img)
