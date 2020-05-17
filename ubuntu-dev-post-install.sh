
## Ubuntu post install for devs
#### VARIABLES
####
## Sets github variables
## for later installation
####

echo 'Ok, lets set a few things first'
echo 'What is your github email addres?'
read git_email

echo 'What is your github username?'
read git_username

echo 'What node version do you want to install?'
read node_version

#### MAIN

echo '## Script start ##'
echo '## Updating system ##'
sudo apt update && sudo apt upgrade -y

echo '## Installing curl ##'
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
nvm install $node_version -y

echo '## Installing yarn ##'
sudo npm install yarn

echo '## Configuring git ##'
git config --global color.ui true
git config --global user.name $git_username
git config --global user.email $git_email

echo '## Installing VSCode ##'
sudo snap install code --classic

echo '## Installing GCC and G++ ##'
sudo apt-get install gcc g++ make

echo 'All done! Thanks for using this script! :)'
exec $SHELL
### FINISHED SCRIPT ###
