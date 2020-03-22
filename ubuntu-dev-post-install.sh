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

#### MAIN

echo '## Script start ##'
echo '## Updating system ##'
sudo apt update && sudo apt upgrade -y

echo '## Installing curl ##'
sudo apt install curl -y
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

echo '## Installing npm and yarn ##'
sudo apt install npm
sudo npm install yarn

echo '## Configuring git ##'
git config --global color.ui true
git config --global user.name "$git_username"
git config --global user.email "$git_email"

echo '## Installing VSCode ##'
sudo snap install code --classic

echo '## Installing Postman ##'
sudo snap install postman

echo 'All done! Thanks for using this script! :)'
### FINISHED SCRIPT ###