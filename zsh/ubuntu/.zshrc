# default zsh stuffs
export ZSH="/home/dmatmyown/.oh-my-zsh"
ZSH_THEME=""
source $ZSH/oh-my-zsh.sh

# *** DO NOT MOVE BELOW THIS CONFIGURATIONS ABOVE "soure $ZSH/oh-my-zsh.sh" command ***
# User configuration 

## EXTERNAL PLUGINS AND ADDED COMMANDS
### SET PURE PROMPT
fpath+=('/usr/local/lib/node_modules/pure-prompt/functions')
autoload -U promptinit
promptinit
prompt pure

### nvm COMMAND
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

### UNALIAS zsh's default ALIASES
unalias afind
unalias diff
unalias egrep
unalias fgrep
unalias grep
unalias md
unalias rd
unalias history

### CUSTOM FUNCTIONS
##### Calculator
function = {
  echo "$@" | bc -l
}

#### mkdir something and cd something
function mkcd() {
   mkdir -p "$*" && cd "$_"
}

### ALIASED
# *) For a full list of active aliases, run `alias`.
alias config="code ~/.zshrc"
alias change="source ~/.zshrc"
alias envconfig="code ~/.zshenv"
alias envchange="source ~/.zshenv"

alias whereami="echo \$PWD"
alias home="cd ~"
alias winHome="cd /mnt/c/Users/dmkim"

alias myown="cd /home/dmatmyown/myown-dev"
alias resume="cd /home/dmatmyown/myown-dev/myown-resume"
alias main="cd /home/dmatmyown/myown-dev/myown-resume"

alias cl="clear"

alias gitAA="git add ."
alias gitPOM="git push origin master"

# *) start python virtualenv
alias activate="source ./venv/bin/activate"