# install package manager
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update && brew upgrade

# PHP Setup
brew tap homebrew/dupes
brew tap homebrew/versions

# Base Packages
brew install \
tree \
node \
ssh-copy-id \
wget \
colordiff \
ack \
caskroom/cask/brew-cask

# Server Installs
brew install \
nginx \
mysql \
mongodb 

brew install php56 --with-fpm --without-apache --with-imap --with-debug --without-snmp

# Autostart mysql and start right away
ln -sfv /usr/local/opt/mysql/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist
# Secure MySql
mysql_secure_installation

# Nginx Setup defaults to port 8080
# Docroot: /usr/local/var/www
# Default Config: /usr/local/etc/nginx/nginx.conf
# nginx will load all files in /usr/local/etc/nginx/servers/
# To have launchd start nginx at login and start now:
ln -sfv /usr/local/opt/nginx/*.plist ~/Library/LaunchAgent
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.nginx.plist

# Font Support
brew tap caskroom/fonts

# Beta/Dev Versions
brew tap caskroom/versions

# VM / Dev Casks
brew cask install \
virtualbox \
parallels-desktop \
docker \
docker-machine \
docker-compose \
kitematic \
docker-machine-driver-parallels \
vagrant \
kaleidoscope \
ksdiff \
sequel-pro \
sublime-text3

# Mac Apps & Fonts
brew cask install \
font-source-code-pro \
adobe-creative-cloud \
google-chrome \
firefox \
xquartz \
handbrake \
spotify

# Creative Cloud needs additional setup
open "/opt/homebrew-cask/Caskroom/adobe-creative-cloud/latest/Creative Cloud Installer.app"