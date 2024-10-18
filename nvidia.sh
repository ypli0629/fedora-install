#!/bin/bash

# nvidia
echo "GSK_RENDERER=ngl" > ~/.config/environment.d/gsk.conf
# sudo dnf install akmod-nvidia xorg-x11-drv-nvidia-cuda -y #optional if using nvidia-smi or cuda
#sudo dnf kargs --append=rd.driver.blacklist=nouveau --append=modprobe.blacklist=nouveau --append=nvidia-drm.modeset=1 # this might not be needed at some point when ostree systems will support the standard way to specify this.
