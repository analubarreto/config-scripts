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

echo '## Install Discord and Spotify ##'
sudo snap install discord spotify

echo '## Install slack ##'
sudo snap install slack --classic

echo '## Install steam ##'
sudo apt install steam

echo 'All done! Thanks for using this script! :)'
### FINISHED SCRIPT ###
