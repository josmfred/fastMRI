ARG BASE_IMAGE=nvidia/cuda
FROM ${BASE_IMAGE} as dev-base


ARG UID
ARG GID
ARG USER
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=America/Los_Angeles

RUN useradd -r -u ${UID} ${USER}

RUN apt-get update
RUN apt-get install -y tzdata
RUN apt-get install -y \
    python3-pip \
    curl \
    ca-certificates \
    sudo \
    git \
    bzip2 \
    libx11-6 \
    vim \
    git \
    wget \
    ffmpeg 

COPY requirements.txt /tmp/
RUN pip3 install --upgrade pip
RUN xargs -n 1 -L 1 pip3 install --upgrade < /tmp/requirements.txt