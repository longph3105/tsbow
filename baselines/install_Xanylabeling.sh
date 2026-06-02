eval "$(conda shell.bash hook)"

conda create -n Xanylabeling  python=3.9 -y

conda activate Xanylabeling

# Install ONNX Runtime GPU (CUDA 12.x)
pip install onnxruntime-gpu --extra-index-url https://aiinfra.pkgs.visualstudio.com/PublicPackages/_packaging/onnxruntime-cuda-12/pypi/simple/ 

# Download the source code
# The documents for Xanylabeling is used for v3.3.8
# If you use later version, please follow their documents.
git clone -b v3.3.8 https://github.com/CVHub520/X-AnyLabeling.git
cd X-AnyLabeling/

# Install Dependencies
pip install -r requirements-dev.txt
