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
