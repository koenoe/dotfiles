# Bundle exec
alias be="bundle exec"

# Get week number
alias week='date +%V'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# Chromium
alias chromium-41="open -na /Applications/Chromium\ 41.app --args --disable-web-security --user-data-dir='/tmp/chrome_dev' --auto-open-devtools-for-tabs"
alias chromium-53="open -na /Applications/Chromium\ 53.app --args --disable-web-security --user-data-dir='/tmp/chrome_dev' --auto-open-devtools-for-tabs"

# Git
alias git-cleanup="git branch --merged | grep -v '\*\|master\|main\|develop' | xargs -n 1 git branch -d"
