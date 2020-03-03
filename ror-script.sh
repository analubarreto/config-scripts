# Ruby on Rails Ubuntu install #

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

####
## Installing curl
####
echo '## Script start ##'
echo '## Installing curl ##'
sudo apt install curl -y
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

####
## Updating System
####
echo '## Updating system ##'
sudo apt update && sudo apt upgrade -y
sudo apt install git-core zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs yarn

####
## Installing rbenv and ruby
####
echo '## Installing ruby with rbenv ##'
echo '## Installing rbenv ##'

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
		
echo '## Installing latest ruby version  ##'
rbenv install 2.7.0
rbenv global 2.7.0

echo ' ## Installing ruby version 2.5.5  ##'
rbenv install 2.5.5
rbenv global 2.5.5

####
## Installing bundler
####

gem install bundler
rbenv rehash

####
## Configuring git
####
echo '## Configuring git ##'
git config --global color.ui true
git config --global user.name "$git_username"
git config --global user.email "$git_email"

## Generating ssh-key
echo '## Generating ssh-key ##'
ssh-keygen -t rsa -b 4096 -C "$git_email"

####
## Installing rails
####
echo '## Installing latest rails version on latest ruby version ##'
rbenv global 2.7.0
gem install rails -v 6.0.2.1
rbenv rehash

echo 'Installing rails 5 on ruby 2.5.5'
rbenv global 2.5.5
gem install rails -v 5.2.4.1
rbenv rehash

####
## Installing and creating postgresql user
####
sudo apt install postgresql libpq-dev -y
sudo systemctl enable postgresql
sudo systemctl start postgresql

echo 'Now we are creating your postgres user, what username would like?'
read postgres_username

sudo -u postgres createuser $postgres_username -s

echo 'All done! Thanks for using this script!'
exec $SHELL
### FINISHED SCRIPT ###
