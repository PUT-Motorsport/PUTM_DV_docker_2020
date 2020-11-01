# PUTM_DV_docker_2020
PUT Motorsport Driverless docker image for Ubuntu 20.04 and ROS noetic.

Requirements
- docker 19.03 or newer


## Instalation

1. Pull image from DockerHub
```bash
docker pull matpiech/putm_dv:latest
```

### Linux

2. Add docker X server access:
```bash
xhost +local:docker
```

### Windows 10

2. Install [VcXsrv](https://sourceforge.net/projects/vcxsrv).

### MacOS

2. Install [XQuartz](https://www.xquartz.org).


## Usage

Create shared directory between host and docker:

```bash
mkdir $HOME/shared
```

Run docker image

### Linux
```bash
docker run -it \
    --privileged \
    --env="DISPLAY=:0" \
    --volume="$HOME/shared:/root/share:rw" \
    --net=host \
    --name "putm_dv" \
    matpiech/putm_dv:latest \
    bash
```

### Windows 10
```bash
docker run -it \
    --privileged \
    --env="DISPLAY:=$DISPLAY" \
    --volume="C:\shared:/root/share:rw" \
    --net=host \
    --name "putm_dv" \
    matpiech/putm_dv:latest \
    bash
```

### MacOS
```bash
docker run -it \
    --privileged \
    --env="DISPLAY=docker.for.mac.host.internal:0" \
    --volume="$HOME/shared:/root/share:rw" \
    --net=host \
    --name "putm_dv" \
    matpiech/putm_dv:latest \
    bash
```
