FROM nvidia/cuda:10.2-cudnn7-runtime-ubuntu18.04

ADD pip.conf /root/.pip/pip.conf

RUN DEBIAN_FRONTEND=noninteractive apt-get update -qq && \
    DEBIAN_FRONTEND=noninteractive apt-get install -qqy python3-pip git less vim && \
    rm -rf /var/lib/apt/lists/*

COPY . /app/
WORKDIR /app

RUN pip3 install --upgrade pip
RUN pip3 install torch==1.10.1+cu102 torchvision==0.11.2+cu102 torchaudio===0.10.1+cu102 -f https://download.pytorch.org/whl/cu102/torch_stable.html 
RUN pip3 install -r first-order-model/requirements.txt
RUN pip3 install -r Wav2Lip/requirements.txt
