# etu as default
container_name=projet_indus_docker     
sources="projet_indus_docker"


# Settings required for having nvidia GPU acceleration inside the docker
DOCKER_GPU_ARGS="--env DISPLAY --env QT_X11_NO_MITSHM=1"

# Settings to use graphical applications : linux or wsl ?
if [ -f /tmp/.X11-unix ]; then
    DOCKER_GUI="--volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" --volume="$XAUTHORITY:/dot.Xauthority""
elif [ -d /mnt/wslg ]; then
    DOCKER_GUI="--volume="/mnt/wslg:/mnt/wslg" --volume="/mnt/wslg/.X11-unix:/tmp/.X11-unix""
else
    DOCKER_GUI=""
fi

# Start docker with container name "projet_indus_docker"
docker run -it \
$DOCKER_GPU_ARGS \
$DOCKER_GUI \
--privileged \
--net="host" \
--volume $UR_DEVENV_PATH/Volume:/home/ \
--workdir="/home/" \
--env container_name=$container_name \
--name="$container_name" \
projet_indus_docker
