#!/bin/bash

#basic
sudo apt-get build-dep qt5-default
sudo apt-get install libxcb-xinerama0-dev
sudo apt-get install build-essential 

#xcb
sudo apt-get install libxcb.*-dev libx11-xcb-dev libglu1-mesa-dev libxrender-dev libxi-dev libxkbcommon-dev libxkbcommon-x11-dev

sudo apt install -y libx11-dev libx11-xcb-dev libxext-dev libxfixes-dev libxi-dev libxrender-dev libxcb1-dev libxcb-glx0-dev libxcb-keysyms1-dev libxcb-image0-dev libxcb-shm0-dev libxcb-icccm4-dev libxcb-sync0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-randr0-dev libxcb-render-util0-dev libxkbcommon-dev libxkbcommon-x11-dev

sudo apt install -y libxcursor1 libxcursor-dev xcursor*

#open gl
sudo apt-get install build-essential
sudo apt-get install libgl1-mesa-dev
sudo apt-get install libglu1-mesa-dev
sudo apt-get install libegl1-mesa-dev
sudo apt-get install freeglut3-dev


#qt multimedia
sudo apt install -y alsa*
sudo apt install libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev libgstreamer-plugins-bad1.0-dev gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav  gstreamer1.0-tools gstreamer1.0-x gstreamer1.0-alsa gstreamer1.0-gl gstreamer1.0-gtk3 gstreamer1.0-qt5 gstreamer1.0-pulseaudio

#qt WebEngine
sudo apt install -y  dbus*
sudo apt install -y drm*
sudo apt install -y libdrm*
sudo apt install -y udev*
sudo apt install -y libudev*

sudo apt install -y fontconfig
sudo apt install -y libdrm xcomposite xcursor xi xrandr xscrnsaver xtst
sudo apt install -y ffmpeg

#qt doc
sudo apt install libclang-dev llvm


