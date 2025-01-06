sudo apt install ros-humble-ur

sudo apt-get install --no-install-recommends freeglut3-dev g++ libdrm-dev\
libexpat1-dev libglw1-mesa libglw1-mesa-dev libmotif-dev libncurses5-dev\
libraw1394-dev libx11-dev libxdamage-dev libxext-dev libxt-dev libxxf86vm-dev\
tcsh unzip x11proto-dri2-dev x11proto-gl-dev

wget https://s3.amazonaws.com/dl.3dsystems.com/binaries/support/downloads/KB+Files/Open+Haptics/openhaptics_3.4-0-developer-edition-amd64.tar.gz
tar -xf openhaptics_3.4-0-developer-edition-amd64.tar.gz
cd openhaptics_3.4-0-developer-edition-amd64
sudo ./install

wget https://s3.us-east-1.amazonaws.com/dl.3dsystems.com/binaries/Sensable/Linux/TouchDriver_2024_09_19.tgz
tar -xf TouchDriver_2024_09_19.tgz
cd TouchDriver_2024_09_19
chmod +x install_haptic_driver
sudo ./install_haptic_driver
