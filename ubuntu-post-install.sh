## Ubuntu post install
#### MAIN

echo '## Script start ##'
echo '## Updating system ##'
# sudo apt update && sudo apt upgrade -y

echo '## Install flatpak and snap ##'
sudo apt install flatpak snapd -y

echo '## Install Discord and Zoom ##'
sudo snap install discord zoom-client

echo '## Install slack ##'
sudo snap install slack --classic

echo '## Install steam ##'
sudo apt install steam -y

echo '## Install blender ##'
sudo snap install blender --classic

echo '## Install figma and obs-studio ##'
sudo snap install figma-linux obs-studio gravit-designer

echo 'All done! Thanks for using this script! :)'
### FINISHED SCRIPT ###
