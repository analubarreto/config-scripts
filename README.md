# config-scripts
Linux O.S. configuration scripts

By now there's only a RoR configuration script for Ubuntu 19.10+
This script prepares your PC for the installation, install rbenv, two versions of ruby (2.7.0 and 2.5.5) 
and two versions of rails (6.0.1 and 5.2.4.1).

It also configures github creating an ssh key, which, if you just use enter when it asks can be added in your github account by
using:
cat ~/.ssh/id_rsa.pub
and pasating the result here: https://github.com/settings/keys

Last but not least it installs postgresql and adds a username chosen by the user
