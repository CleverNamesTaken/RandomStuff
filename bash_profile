alias pbcopy='xclip -sel c'
alias echoLast='history | tail -2 | head -1 | cut -c 8-'
alias myIP="ifconfig | grep tun0 -a1 | tail -1 | awk '{print \$2}'"
alias r='reset'
