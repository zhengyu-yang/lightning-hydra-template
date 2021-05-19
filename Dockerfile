# Build commands:
# docker build -t project_name .
# docker run --gpus all -it --rm project_name

# Build from official Nvidia PyTorch image
# GPU-ready with built in Apex mixed-precision support
# https://ngc.nvidia.com/catalog/containers/nvidia:pytorch
FROM nvcr.io/nvidia/pytorch:21.04-py3


# Copy all files
COPY . workspace/


# Install requirements
RUN pip install -r requirements.txt