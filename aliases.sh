###############################################################################
######### SSH Aliases
###############################################################################
alias ssh.ara-dev.com='ssh ara-dev.com'
alias ssh.ara-vps.com='ssh ara-vps.com'
alias ssh.massagebalance='ssh -i ~/.ssh/id_rsa_deshawns_godaddy massagebalance@107.180.20.71'

###############################################################################
# Mac Specific Aliases
###############################################################################
# Add an empty space to mac dock
alias mac.add-dock='defaults write com.apple.dock persistent-apps -array-add "{tile-data={}; tile-type=\"spacer-tile\";}"'

###############################################################################
# Server Aliases for Homebrew installed Mac Apps
###############################################################################
# Nginx
alias nginx.start='sudo launchctl load /Library/LaunchDaemons/homebrew.mxcl.nginx.plist'
alias nginx.stop='sudo launchctl unload /Library/LaunchDaemons/homebrew.mxcl.nginx.plist'
alias nginx.restart='nginx.stop && nginx.start'
# Nginx Logs
alias nginx.logs.error='tail -250f /usr/local/etc/nginx/logs/error.log'
alias nginx.logs.access='tail -250f /usr/local/etc/nginx/logs/access.log'
alias nginx.logs.default.access='tail -250f /usr/local/etc/nginx/logs/default.access.log'
# Mysql
alias mysql.start="launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist"
alias mysql.stop="launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist"
alias mysql.restart='mysql.stop && mysql.start'

# mac
alias subl="'/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'"
