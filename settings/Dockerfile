FROM nvidia/cuda:10.0-cudnn7-devel-ubuntu16.04
MAINTAINER Soonmin Hwang <jjang9hsm@gmail.com>


RUN apt-get update && apt-get install -y --no-install-recommends \
         build-essential \
         cmake \
         git \
         curl \
         vim \
         ca-certificates \
         libjpeg-dev \
         libpng-dev &&\
     rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y sudo && \
    adduser user && \
    echo "user ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/user && \
    chmod 0440 /etc/sudoers.d/user

RUN curl -o /home/user/anaconda.sh -O https://repo.anaconda.com/archive/Anaconda3-2018.12-Linux-x86_64.sh
RUN chmod +x /home/user/anaconda.sh && \
     /home/user/anaconda.sh -b -p /home/user/anaconda3 && \
     /home/user/anaconda3/bin/conda install numpy pyyaml mkl mkl-include setuptools cmake cffi typing ipython && \
     /home/user/anaconda3/bin/conda install pytorch torchvision cudatoolkit=10.0 -c pytorch && \
     /home/user/anaconda3/bin/conda install opencv && \
     /home/user/anaconda3/bin/conda clean -ya

ENV PATH /home/user/anaconda3/bin:${PATH}
