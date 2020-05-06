# config-scripts
Linux O.S. configuration scripts

By now there's only a RoR configuration script for Ubuntu 19.10+ <br/>

## RoR Script

### How to install RoR using the given script
1. Download zip
2. Unzip
3. Open a terminal Window (ctrl+alt+T)
4. In the terminal window type: cd Downloads/config-scripts-master/
5. Then type: chmod +x ./ror-script.sh
6. Finally run ./ror-script.sh

### RoR Script Installs:
* curl
* git
* node 12
* yarn
* rbenv
* ruby 2.7.0
* ruby 2.5.5
* rails 5.4.2.1
* rails 6.0.1
* postgres 11

### RoR Script Configures
* git user email
* git user name
* git user color ui
* git ssh key (you have to put it in your account) <br/>
  ** cat ~/.ssh/id_rsa.pub (in a terminal window) <br/>
  ** paste the result here: https://github.com/settings/keys <br/>
* postgreql user

## Flutter Script
The flutter script will not completely configure flutter in your machine. It will download, install flutter and android studio. For further instructions you should go to:

https://flutter.dev/docs/get-started/install/linux

And start reading at Set up your Android device

## Ubuntu post install scripts
There are two post install scripts one for Developers and one for normal users.
### Ubuntu post install for normal users installs
* discord
* spotify
* slack
* steam

### Ubuntu post install for developers installs
* git
* curl
* npm
* yarn
* nodeJS
* VSCode
* postman
* vue-cli
* vue-native-cli

## Arch post install installs
* snap
* vscode
* sublime text
* nodejs (latest version)
* yarn
* vue native cli
* expo-cli
* vue-cli
* android studio
* mongodb
* figma
* gravit-designer
* steam
* wps office

This script was only tested on Manjaro, if you are going to test it on arch linux, please give me some feedback