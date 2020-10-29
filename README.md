# PUTM_DV_docker_2020
PUT Motorsport Driverless docker image for Ubuntu 20.04 and ROS noetic.

1. Pull image from DockerHub
```bash
docker pull matpiech/putm_dv:base
```

2. Add docker X server access:
```bash
xhost +local:docker
```

3. Make share directory between host and docker
```bash
mkdir $HOME/shared
```

4. Run docker image
```bash
docker run -it \
    --privileged \
    --env="DISPLAY=$DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --env="XAUTHORITY=$XAUTH" \
    --volume="$XAUTH:$XAUTH" \
    --volume="$HOME/shared:/root/share:rw" \
    --runtime=nvidia \
    --network host \
    --name "putm_dv" \
    matpiech/putm_dv:base \
    bash
```
