# Bundle exec
alias be="bundle exec"

# Get week number
alias week='date +%V'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# Tidal
alias tidal="/Applications/TIDAL.app/Contents/MacOS/./TIDAL"
alias tidal-stage="/Applications/TIDAL.app/Contents/MacOS/./TIDAL -url=https://desktop.stage.tidal.com"

# Couchpotato
alias couchpotato="python /Applications/CouchPotatoServer/CouchPotato.py"

# Chrome
# alias chrome-canary="/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary --force-dark-mode"
