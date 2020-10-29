FROM osrf/ros:noetic-desktop-full

ENV LANG=C.UTF-8
ENV LANG_ALL=C.UTF-8

ENV NVIDIA_VISIBLE_DEVICES \
    ${NVIDIA_VISIBLE_DEVICES:-all}
ENV NVIDIA_DRIVER_CAPABILITIES \
    ${NVIDIA_DRIVER_CAPABILITIES:+$NVIDIA_DRIVER_CAPABILITIES,}graphics

RUN export DEBIAN_FRONTEND=noninteractive && \
    apt update && \
    apt upgrade -y && \
    apt install -y \
        lsb-core \
        g++ \
        gcc \
        openssh-server \
        vim \
        python3-pip \
        python3-all-dev \
        screen

COPY config/ /config/
RUN ls -la /config/*

RUN pip3 install -r /config/requiremenst.txt

WORKDIR ~