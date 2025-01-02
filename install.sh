distribution=$(. /etc/os-release; echo $ID$VERSION_ID) && curl -s -L https://nvidia.github.io/nvidia-container-runtime/gpgkey | sudo apt-key add - && curl -s -L https://nvidia.github.io/nvidia-container-runtime/$distribution/nvidia-container-runtime.list | sudo tee /etc/apt/sources.list.d/nvidia-container-runtime.list
apt-get update
apt-get install -y libnccl2 libnccl-dev
apt-get install nccl
nvidia-smi
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-keyring_1.1-1_all.deb
wget -i https://developer.nvidia.com/downloads/compute/machine-learning/nccl/secure/2.23.4/ubuntu2204/x86_64/nccl-local-repo-ubuntu2204-2.23.4-cuda12.2_1.0-1_amd64.deb/
export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH
export NCCL_DEBUG=INFO
