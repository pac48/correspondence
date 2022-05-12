//
// Created by paulg on 1/16/2022.
//

#include "mex.h"
#include "parseDAE.cpp"

template<typename T>
mxArray * processObjects(T object) {
    printf("Object not processed!");
    return nullptr;
}


mxArray* mxSetMatrix(float* matrix, mwSize dims[], mwSize numDims){

    int totalElement = 1;
    for (int i = 0; i < numDims; i++){
        totalElement *= dims[i];
    }
    mxArray *data = mxCreateNumericArray(2, dims, mxSINGLE_CLASS, mxREAL);
    float* mwData = (float *) mxCalloc( totalElement, sizeof(float ));
    memcpy(mwData, matrix, totalElement* sizeof(float));
    mxSetData(data, mwData);
    mxArray *dataT;
    mexCallMATLAB(1, &dataT, 1, &data, "transpose");
    return dataT;
}

mxArray* mxSetTranform(float* transform){
    mwSize dims[2] = {4, 4};
    return mxSetMatrix(transform, dims, 2);
}

mxArray *processObjects(Mesh *mesh) {
    mwSize dimsStruct[1] = {1};
    const mwSize nfields = 4;
    const char *fieldnames[nfields] = {"verts",
                                       "normals",
                                       "textureCoords",
                                       "vertOrder"};

    mxArray *mwStruct = mxCreateStructArray(1, dimsStruct, nfields, fieldnames);

    mwSize dims[2] = {mesh->numFaces, 3};
    mxArray *data = mxCreateNumericArray(2, dims, mxSINGLE_CLASS, mxREAL);
    float *mwData = (float *) mxCalloc(mesh->vertsX.size() * 3, 4);
    memcpy(mwData, mesh->vertsX.data(), mesh->vertsX.size() * 4);
    memcpy(mwData + mesh->vertsX.size(), mesh->vertsY.data(), mesh->vertsY.size() * 4);
    memcpy(mwData + 2 * mesh->vertsX.size(), mesh->vertsZ.data(), mesh->vertsZ.size() * 4);
    mxSetData(data, mwData);
    mxSetField(mwStruct, 0, "verts", data);


    data = mxCreateNumericArray(2, dims, mxSINGLE_CLASS, mxREAL);
    mwData = (float *) mxCalloc(mesh->normalsX.size() * 3, 4);
    memcpy(mwData, mesh->normalsX.data(), mesh->normalsX.size() * 4);
    memcpy(mwData + mesh->normalsX.size(), mesh->normalsY.data(), mesh->normalsY.size() * 4);
    memcpy(mwData + 2 * mesh->normalsX.size(), mesh->normalsZ.data(), mesh->normalsZ.size() * 4);
    mxSetData(data, mwData);
    mxSetField(mwStruct, 0, "normals", data);


    dims[1] = 2;
    data = mxCreateNumericArray(2, dims, mxSINGLE_CLASS, mxREAL);
    mwData = (float *) mxCalloc(mesh->textureCoordsU.size() * 2, 4);
    memcpy(mwData, mesh->textureCoordsU.data(), mesh->textureCoordsU.size() * 4);
    memcpy(mwData + mesh->textureCoordsU.size(), mesh->textureCoordsV.data(), mesh->textureCoordsV.size() * 4);
    mxSetData(data, mwData);
    mxSetField(mwStruct, 0, "textureCoords", data);


    dims[0] = mesh->vertOrder.size();
    dims[1] = 1;
    data = mxCreateNumericArray(2, dims, mxINT32_CLASS, mxREAL);
    int* mwDataInt = (int *) mxCalloc(mesh->vertOrder.size(), 4);
    memcpy(mwDataInt, mesh->vertOrder.data(), mesh->vertOrder.size() * 4);
    mxSetData(data, mwDataInt);
    mxSetField(mwStruct, 0, "vertOrder", data);

    return mwStruct;

}

void fillBoneConnections(Node* cur, unordered_map<string, int> bone2IndMap, float* mwBoneConnectionsData){

    int curInd = bone2IndMap[cur->sid];
    for (auto child : cur->children){
        int childInd = bone2IndMap[child->sid];
        mwBoneConnectionsData[curInd + childInd*bone2IndMap.size()] = 1;
        fillBoneConnections(child, bone2IndMap, mwBoneConnectionsData);
    }
}

mxArray *processObjects(Controller *controller) {
    mwSize dimsStruct[1] = {1};
    const mwSize nfields = 8;
    const char *fieldnames[nfields] = {"skin",
                                       "transform",
                                       "bindShapeMatrix",
                                       "bones",
                                       "influences",
                                       "bindMatrixInvsT",
                                       "boneConnections",
                                       "boneTransformsT"};
    mxArray *mwStruct = mxCreateStructArray(1, dimsStruct, nfields, fieldnames);

    mxArray* meshStruct = processObjects(controller->skin);
    mxSetField(mwStruct, 0, "skin", meshStruct);

    mxArray* data = mxSetTranform(controller->transform);
    mxSetField(mwStruct, 0, "transform", data);

    mwSize dims[2] = {4, 4};
    data = mxSetMatrix(controller->bindShapeMatrix,dims,2);
    mxSetField(mwStruct, 0, "bindShapeMatrix", data);

    dims[0] = controller->influences.size();
    dims[1] = 1;
    mxArray* cellNames = mxCreateCellArray(2, dims);

    vector<string> keys;
    for (auto key : controller->influences) {
        keys.push_back(key.first);
    }
    sort(keys.begin(), keys.end());

    mwSize dimsInfluences[2] = {controller->numVerts, (mwSize) keys.size()};
    mxArray* mxInfluences = mxCreateNumericArray(2, dimsInfluences, mxSINGLE_CLASS, mxREAL);
    float* mwInfluencesData = (float *) mxCalloc(dimsInfluences[0] * dimsInfluences[1], 4);

    mwSize dimsBind[3] = {4, 4, (mwSize) keys.size()};
    mxArray* mxBindMatrixInvs = mxCreateNumericArray(3, dimsBind, mxSINGLE_CLASS, mxREAL);
    float* mwBindMatrixInvsData = (float *) mxCalloc(dimsBind[0] * dimsBind[1]* dimsBind[2], 4);

    unordered_map<string, int> bone2IndMap;
    for (int i = 0; i  < keys.size(); i++){
        bone2IndMap[keys[i]] = i+1; // account for implicit root

        mxSetCell(cellNames, i, mxCreateString(keys[i].c_str()));
        memcpy(mwInfluencesData + i*dimsInfluences[0], controller->influences[keys[i]].data(), dimsInfluences[0] * 4);
        memcpy(mwBindMatrixInvsData + i*16, controller->joint2BindInv[keys[i]].data(), 16 * 4);
    }
    mxSetData(mxInfluences, mwInfluencesData);
    mxSetData(mxBindMatrixInvs, mwBindMatrixInvsData);

    mxSetField(mwStruct, 0, "bones", cellNames);
    mxSetField(mwStruct, 0, "influences", mxInfluences);
    mxSetField(mwStruct, 0, "bindMatrixInvsT", mxBindMatrixInvs);

// lets use a matrix
// root  [  bone1  bone 9 bone 12  0 0 0 0 0
// bone1[  0   bone2 0 0 0 0 0 0 0 00 0  ]
// ...

    dims[0] = keys.size()+1;
    dims[1] = keys.size()+1;
    mxArray* mxBoneConnections = mxCreateNumericArray(2, dims, mxSINGLE_CLASS, mxREAL);
    float* mwBoneConnectionsData = (float *) mxCalloc(dims[0] * dims[1], 4);

    Node root = Node();
    root.children = controller->skeletons;
    root.sid = "Root";
//    root.transform = controller->transform;
    bone2IndMap[root.sid] = 0;
    fillBoneConnections(&root, bone2IndMap, mwBoneConnectionsData);

    mxSetData(mxBoneConnections, mwBoneConnectionsData);
    mxSetField(mwStruct, 0, "boneConnections", mxBoneConnections);

    vector<Node*> jointNode;
    for (auto key: idMap<Node>) {
        Node *node = key.second;
        if (node->type == "JOINT") {
            jointNode.push_back(node);
        }
    }

    int numNode = jointNode.size();
    mwSize dimsNodeTrans[3] = {4, 4, (mwSize) numNode};
    mxArray* mxNodeTrans = mxCreateNumericArray(3, dimsNodeTrans, mxSINGLE_CLASS, mxREAL);
    float* mwNodeTransData = (float *) mxCalloc(dimsNodeTrans[0]*dimsNodeTrans[1]*dimsNodeTrans[2], 4);

    for (auto node : jointNode){
            int ind = bone2IndMap[node->sid]-1;
            memcpy(mwNodeTransData + ind*16, node->transform, 16 * 4);
    }
    mxSetData(mxNodeTrans, mwNodeTransData);
    mxSetField(mwStruct, 0, "boneTransformsT", mxNodeTrans);

    return mwStruct;


}


mxArray *processObjects(Light *light) {
    mwSize dimsStruct[1] = {1};
    const mwSize nfields = 4;
    const char *fieldnames[nfields] = {"color",
                                       "direction",
                                       "type",
                                       "transform"};
    mxArray *mwStruct = mxCreateStructArray(1, dimsStruct, nfields, fieldnames);

    mwSize dims[2] = {3, 1};
    mxArray *data = mxCreateNumericArray(2, dims, mxSINGLE_CLASS, mxREAL);
    float *mwData = (float *) mxCalloc( 3, 4);
    memcpy(mwData, light->color, 3 * 4);
    mxSetData(data, mwData);
    mxSetField(mwStruct, 0, "color", data);

    data = mxCreateNumericArray(2, dims, mxSINGLE_CLASS, mxREAL);
    mwData = (float *) mxCalloc( 3, 4);
    memcpy(mwData, light->direction, 3 * 4);
    mxSetData(data, mwData);
    mxSetField(mwStruct, 0, "direction", data);

    data = mxSetTranform(light->transform);
    mxSetField(mwStruct, 0, "transform", data);


    data = mxCreateString(light->type.c_str());
    mxSetField(mwStruct, 0, "type", data);

    return mwStruct;

}

mxArray *processObjects(Camera* camera) {
    mwSize dimsStruct[1] = {1};
    const mwSize nfields = 5;

    const char *fieldnames[nfields] = {"xfov",
                                       "aspect_ratio",
                                       "znear",
                                       "zfar",
                                       "transform"};

    mxArray *mwStruct = mxCreateStructArray(1, dimsStruct, nfields, fieldnames);

    mxArray *data = mxCreateDoubleScalar(camera->xfov);
    mxSetField(mwStruct, 0, "xfov", data);

    data = mxCreateDoubleScalar(camera->aspect_ratio);
    mxSetField(mwStruct, 0, "aspect_ratio", data);

    data = mxCreateDoubleScalar(camera->znear);
    mxSetField(mwStruct, 0, "znear", data);

    data = mxCreateDoubleScalar(camera->zfar);
    mxSetField(mwStruct, 0, "zfar", data);

    data = mxSetTranform(camera->transform);
    mxSetField(mwStruct, 0, "transform", data);


    return mwStruct;

}

template<typename T>
void process(mxArray *& plhsN, T objects){
    mwSize dims[1];
    dims[0] = objects.size();
    plhsN = mxCreateCellArray(1, dims);
    for (int i = 0; i < objects.size(); i++) {
        mxArray *val = processObjects(&objects[i]);
        mxSetCell(plhsN, i, val);
    }

}

void mexFunction(int nlhs, mxArray *plhs[],
                 int nrhs, const mxArray *prhs[]) {
    if (nrhs != 1)
        mexErrMsgTxt("function only takes one input: filename");
    if (nlhs > 4)
        mexErrMsgTxt("Wrong output arguments, should be [controllers, meshes, cameras, lights]");

    char fileName[100];
    mxGetString(prhs[0], fileName, 99);

    parseDAE(string(fileName));

    vector<Cases> outputTypes = {CONTROLLER, MESH, CAMERA, LIGHT};
    for(int i =0; i < outputTypes.size(); i++){
        switch (outputTypes[i]) {
            case CONTROLLER:
                process(plhs[i], objects<Controller>);
                break;
            case MESH:
                process(plhs[i], objects<Mesh>);
                break;
            case LIGHT:
                process(plhs[i], objects<Light>);
                break;
            case CAMERA:
                process(plhs[i], objects<Camera>);
                break;

        }

    }

}