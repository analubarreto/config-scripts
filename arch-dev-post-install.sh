## Manjaro post install for everyone
#### VARIABLES
####
## Sets github variables
## for later installation
####
echo '## Updating System ##'
sudo pacman -Syu --noconfirm

echo 'Ok, lets set a few things first'
echo 'What is your github email addres?'
read git_email

echo 'What is your github username?'
read git_username

echo '## Installing snap ##'
sudo pacman -S snapd --noconfirm

echo '## Installing yay, vscode and sublime ##'
sudo pacman -S yay code --noconfirm
yay -S sublime-text-dev --noconfirm

echo '## Installing latest NodeJS ##'
sudo pacman nodejs

echo '## Installing Front-End stuff ##'
sudo npm install --global yarn expo-cli vue-native-cli
sudo npm install --global @vue-cli

echo '## Setting up git ##'
git config --global user.name "$git_username"
git config --global user.email "$git_email"

echo '## Installing Back-End stuff ##'
yay -S mongodb --noconfirm
systemctl enable --now mongodb


echo '## Installing figma and gravit designer ##'
sudo snap install figma-linux gravit-designer

echo '## Installing steam ##'
sudo pacman -S steam --noconfirm

echo '## Installing wps office ##'
sudo snap install wps-office-multilang