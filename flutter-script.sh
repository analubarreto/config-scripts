# Flutter Ubuntu install #

#### Main
echo 'Downloading flutter from github'
git clone https://github.com/flutter/flutter.git -b stable

echo 'Copying into development folder'
mkdir development
mv flutter $HOME/development

echo 'Adding flutter tool to path'
export PATH="$PATH:`pwd`/flutter/bin"

echo 'Pre downloading development binaries'
flutter precache

echo 'Download Android Studio using snap'
sudo snap install android-studio --classic

echo 'Adding flutter permanently to $PATH'
export PATH="$PATH:$HOME/development/flutter/bin"
which flutter

echo 'Running flutter doctor'
echo 'Your next steps will be given by the flutter doctor command'
flutter doctor

echo 'All done! Thanks for using this script! :)'
### FINISHED SCRIPT ###