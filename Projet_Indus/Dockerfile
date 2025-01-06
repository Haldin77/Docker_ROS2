FROM osrf/ros:humble-desktop-jammy

# install xauth for gui applications
RUN apt-get update && apt-get install -q -y --no-install-recommends \
    xauth \
    && rm -rf /var/lib/apt/lists/*

# install packages
RUN apt-get update && apt-get install -q -y --no-install-recommends \
    build-essential \
    cmake \
    git \
    libpoco-dev \
    libeigen3-dev \
    net-tools \
    nano \
    wget \
    tree \
    ros-humble-ur \
    qtbase5-dev \
    && rm -rf /var/lib/apt/lists/*


COPY ./install_all.sh /

# bash
COPY ./setup.bash /
RUN echo "source /setup.bash">>/root/.bashrc

CMD [ "bash" ]
