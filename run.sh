#!/bin/bash

# Update apt and install packets
sudo apt-get update
sudo apt-get install -y python3-pip python3-pyelftools ninja-build

pip3 install meson
cat /local/repository/add_to_bashrc >> ~/.bashrc
