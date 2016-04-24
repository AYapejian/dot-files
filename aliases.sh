###############################################################################
# Common Aliases
###############################################################################
alias ls='ls -GpFh'
alias ll='ls -al'

alias top='htop'

alias df='df -H'
alias du='du -ch'
alias du.total='du -ch | grep total'

alias mount.column='mount | column -t'

alias grep='grep --color'

# Support resume by default
alias wget='wget -c'

# Start a Quick Web Server
alias start.webserver='python -m SimpleHTTPServer 9000'

###############################################################################
# Networking Aliases
###############################################################################
# Mac only
# alias network.ports.all='sudo lsof -a -n -i'
alias network.ports.open='sudo lsof -a -n -i | grep LISTEN'
# Flush dns  cache
alias network.flush.dns='sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder'
# Get your current public IP
alias network.wan.ip='curl icanhazip.com'

###############################################################################
# Mac Specific Aliases
###############################################################################
# Add an empty space to mac dock
alias mac.add-dock-spacer="defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}' && killall Dock"

###############################################################################
# Server Aliases for Homebrew installed Mac Apps
###############################################################################
# Nginx
alias nginx.start='sudo launchctl load /Library/LaunchDaemons/homebrew.mxcl.nginx.plist'
alias nginx.stop='sudo launchctl unload /Library/LaunchDaemons/homebrew.mxcl.nginx.plist'
alias nginx.restart='nginx.stop && nginx.start'

# Redis
alias red='redis-cli'

###############################################################################
# Docker Aliases
###############################################################################
# Docker-Compose
alias dc="docker-compose"
alias db="docker build --rm=true"

# Clean up Docker
alias docker.rm.containers='docker rm -v $(docker ps -a -q -f status=exited)' # Remove containers that are exited
alias docker.rm.images='docker rmi $(docker images -f "dangling=true" -q)' # Remove all cahced but unused images

# OTHER
alias dev.todos="ack -n --nogroup '(TODO|FIX(ME)?):' -R *"
# alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
