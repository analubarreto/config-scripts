## Ubuntu post install for devs
#### VARIABLES
####
## Sets github variables
## for later installation
####

#### MAIN

echo '## Script start ##'
echo '## Updating system ##'
sudo apt update && sudo apt upgrade -y

echo '## Install flatpak ##'
sudo apt instal install flatpak

echo '## Install Discord, Zoom, Odrive and Figma ##'
sudo snap install discord zoom-client odrive-unofficial figma-linux

echo '## Install slack ##'
sudo snap install slack --classic

echo '## Install steam ##'
sudo apt install steam -y

echo 'All done! Thanks for using this script! :)'
### FINISHED SCRIPT ###
