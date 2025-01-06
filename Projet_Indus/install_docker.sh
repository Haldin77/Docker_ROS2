             # etu as default
# build docker
docker build --tag projet_indus_docker .
docker image prune -f

FANUC_DEVENV_PATH=$(pwd)

# create aliases to use the docker container with only one commande

# if using bash
if [ -f ~/.bashrc ]; then
    echo "add alias projet_indus_docker to bash"
    echo "" >> ~/.bashrc
    echo "# fanuc_$suffix" >> ~/.bashrc
    echo "export UR_DEVENV_PATH='$FANUC_DEVENV_PATH'" >> ~/.bashrc
    echo "alias projet_indus_docker=\"$(pwd)/run_docker.sh\"" >> ~/.bashrc
fi
