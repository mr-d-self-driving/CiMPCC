#!/bin/bash

sudo apt update

sudo apt install -y python3.8
sudo apt install -y python3-pip
sudo ln -sf /usr/bin/python3 /usr/bin/python

pip install scipy -i https://pypi.tuna.tsinghua.edu.cn/simple
pip install matplotlib -i https://pypi.tuna.tsinghua.edu.cn/simple

sudo apt install -y x11-apps
sudo apt install -y x11-xserver-utils
sudo apt install -y vim
sudo apt install -y ros-noetic-map-server
sudo apt install -y ros-noetic-rviz
sudo apt install -y python-tk
