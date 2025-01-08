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
    libncurses-dev \
    libncurses5 \
    libncurses5-dev \
    libncursesw5 \
    libncursesw5-dev \
    wget \
    tree \
    ros-humble-ur \
    qtbase5-dev \
    && rm -rf /var/lib/apt/lists/*
RUN apt-get update && apt-get install -q -y --no-install-recommends \
freeglut3-dev \
libdrm-dev \
libexpat1-dev libglw1-mesa libglw1-mesa-dev libmotif-dev libncurses5-dev \
libraw1394-dev libx11-dev libxdamage-dev libxext-dev libxt-dev libxxf86vm-dev \
tcsh unzip x11proto-dri2-dev x11proto-gl-dev

COPY ./install_all.sh /
RUN chmod +x install_all.sh

# bash
COPY ./setup.bash /
RUN echo "source /setup.bash">>/root/.bashrc

CMD [ "bash" ]
