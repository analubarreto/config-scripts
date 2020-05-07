## Ubuntu post install for devs
#### VARIABLES
####
## Sets github variables
## for later installation
####

#### MAIN

echo 'Are you a media creator (y/n)?'
read media_creator

if [media_creator -eq 'y'] then
  echo 'Do you want to use Gravit Designer or Inkscape (gravit-designer/inkscape)?'
fi

echo 'Do you want to install ODrive (y/n)'
read odrive

echo '## Script start ##'
echo '## Updating system ##'
sudo apt update && sudo apt upgrade -y

echo '## Install flatpak and snap ##'
sudo apt instal install flatpak snapd

echo '## Install Discord, Zoom, Odrive and Figma ##'
sudo snap install discord zoom-client odrive-unofficial

if [odrive -eq 'y'] then
  echo '## Install ODrive ##'
  sudo snap install odrive-unofficial
fi

echo '## Install slack ##'
sudo snap install slack --classic

echo '## Install steam ##'
sudo apt install steam -y

if[media_creator -eq 'y'] then
  echo '## Install blender ##'
  sudo snap install blender --classic

  echo '## Install figma obs-studio and "$design_app" ##'
  sudo snap install figma-linux obs-studio $design_app
fi

echo 'All done! Thanks for using this script! :)'
### FINISHED SCRIPT ###
