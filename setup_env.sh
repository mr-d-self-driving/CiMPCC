#!/bin/bash

sudo apt update

sudo apt install -y x11-apps
sudo apt install -y x11-xserver-utils
sudo apt install -y vim
sudo apt install -y ros-melodic-map-server
sudo apt install -y ros-melodic-rviz
sudo apt install -y python-pip

pip install scipy -i https://pypi.tuna.tsinghua.edu.cn/simple
pip install matplotlib -i https://pypi.tuna.tsinghua.edu.cn/simple

sudo apt install -y python-tk
