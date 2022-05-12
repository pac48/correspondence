# correspondence
GitHub limits the maximum file size to 100MB, so large files are hosted on OneDrive: https://universitysystemnh-my.sharepoint.com/:f:/g/personal/pac48_usnh_edu/Es8nwHSsL3RGraGs4OSoVnQBqGbAyH1e_HSnIeezL6Q3tA?e=5gkPas

**setup:**
You need to:
- put densepose_rcnn_R_50_FPN_s1x.pkl in correspondence\DensePose\densepose_rcnn_R_50_FPN_s1x.pkl
- put h36m_up3d.pt in DecoMR\data\checkpoints\h36m_up3d.pt
- put h36m_up3d.pt in DecoMR\data\model\h36m_up3d\checkpoints\h36m_up3d.pt
- put all .bag files in a bags folder at the top level of the project

You need to set some environmental variables:
- CONDA_ROOT : location of .conda folder
- MATLAB_ROOT : location of Matlab install location (e.g. C:/Program Files/MATLAB/R2021b) 

**DecoMR:**
If you plan on running the DecoMR network, you need to launch Matlab by running setEnv.bat in the DecoMR folder
You need to create a conda environment named DecoMR and install the all requirements in DecoMR\requirements.txt    

**DensePose:**
You need to create python virtual environment in DensePose\venv and install the requirements in DensePose\requirements.txt   

**Building Mex files:**
Some mex file need you to install tinyxml2 to compile them. Currently, the install location is hard coded as C:/Program Files (x86)/tinyxml2-Release.   


