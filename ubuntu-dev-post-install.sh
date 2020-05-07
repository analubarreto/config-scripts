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

echo 'Do you want to install vue and vue-native (y/n)?'
read bool_vue

echo 'Are you a back-end developer (y/n)?'
read bool_back_end

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

if [$bool_vue -eq 'y']
then
  ## Front-End Setup ##
  echo '## Installing VueJS/Native ##'
  sudo npm install -g @vue/cli
  sudo npm install -g expo-cli
  sudo npm install -g vue-native-cli
fi

if [$bool_back_end -eq 'y']
then
	## Back-End Setup ##

	echo '## Installing Postman ##'
	sudo snap install postman

	echo '## Installing Postgresql ##'
	sudo apt install postgresql libpq-dev -y
	sudo systemctl enable postgresql
	sudo systemctl start postgresql

	echo 'Now we are creating your postgres user, what username would like?'
	read postgres_username

	sudo -u postgres createuser $postgres_username -s

	echo '## Installing Mongodb ##'
	sudo apt install -y mongodb
	sudo systemctl enable mongodb
	sudo systemctl start mongodb
fi

echo 'All done! Thanks for using this script! :)'
exec $SHELL
### FINISHED SCRIPT ###
