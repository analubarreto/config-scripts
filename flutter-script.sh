
# Flutter Ubuntu install #

#### Main
echo 'Updating system and installing git'
sudo apt update && sudo apt upgrade -y
sudo apt install git

echo 'Installing curl'
sudo apt install curl

echo 'Downloading flutter from github'
git clone https://github.com/flutter/flutter.git -b stable

echo 'Adding flutter tool to path'
export PATH="$PATH:`pwd`/flutter/bin"

echo 'Adding flutter permanently to PATH'
export PATH="$PATH:$HOME/development/flutter/bin"

echo 'Pre downloading development binaries'
flutter precache

echo 'Download Android Studio using snap'
sudo snap install android-studio --classic

echo 'Adding flutter permanently to $PATH'
export PATH="$PATH:$HOME/flutter/bin"
which flutter

echo 'Running flutter doctor'
echo 'Now you will have to manually accept the licenses, just keep pressing enter'
flutter doctor
flutter doctor --android-licenses

echo 'All done! Thanks for using this script! :)'
### FINISHED SCRIPT ###
