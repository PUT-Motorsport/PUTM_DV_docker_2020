# PUTM_DV_docker_2020
PUT Motorsport Driverless docker image for Ubuntu 20.04 and ROS noetic.

1. Add docker X server access:
```console
xhost +local:docker
```

2. Make share directory between host and docker
```console
mkdir $HOME/shared
```

3. Run docker image
```console
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
    putm_dv \
    bash
```
