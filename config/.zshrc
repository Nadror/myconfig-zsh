#My .zshrc
#!!!zsh-autosuggestions not install by default!!!
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="nadror"
plugins=(git zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh
alias ss='netstat -tulpn' #Check open ports
alias vi='vim' #Vim as default editor
alias restart='systemctl restart' #restart shorcut
alias reload='systemctl reload' #reload shorcut
alias stop='systemctl stop' #stop shorcut
alias enable='systemctl enable' #enable service for automatically run at startup
alias ..='cd ..' # :)
alias ls='ls -ail --color=auto'
alias df='df -h -P --total --exclude-type=devtmpfs 2>/dev/null' #make a total
alias nano='nano -ml' # Have line