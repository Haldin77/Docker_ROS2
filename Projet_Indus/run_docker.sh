path=$UR_DEVENV_PATH            # etu as default
container_name=projet_indus_docker


# check if container exists
if docker ps -a --format '{{.Names}}' | grep -Eq "$container_name"; then
  echo "$container_name container exists"

    # check the status if the container exists
    container_state=$(docker inspect --format '{{.State.Status}}' $container_name)

    echo "$container_name container is $container_state"

    if [ "$container_state" = "running" ]; then
        echo " -> enter the container"
        docker exec -it $container_name bash
    elif [ "$container_state" = "exited" ]; then
        echo " -> start the container"
        docker start $container_name
        docker exec -it $container_name bash
    fi

    # exec the container if it does not exist
else
  echo "$container_name container does not exist"
  $path/start_docker.sh $suffix
fi
