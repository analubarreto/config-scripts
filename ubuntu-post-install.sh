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

echo '## Install Discord, Zoom and Odrive ##'
sudo snap install discord zoom-client odrive-unofficial

echo '## Install slack ##'
sudo snap install slack --classic

echo '## Install steam ##'
sudo apt install steam

echo '## Install Tidal ##'
flatpak install nuvola eu.tiliado.NuvolaAppTidal 

echo 'All done! Thanks for using this script! :)'
### FINISHED SCRIPT ###
