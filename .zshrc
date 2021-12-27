#  /$$$$$$$$           /$$      
# |_____ $$           | $$      
#      /$$/   /$$$$$$$| $$$$$$$ 
#     /$$/   /$$_____/| $$__  $$
#    /$$/   |  $$$$$$ | $$  \ $$
#   /$$/     \____  $$| $$  | $$
#  /$$$$$$$$ /$$$$$$$/| $$  | $$
# |________/|_______/ |__/  |__/

export ZSH="$HOME/.oh-my-zsh"
export PATH=$HOME/.local/bin:$PATH

ZSH_THEME="darkblood"
plugins=(git tmux docker docker-compose)

source $ZSH/oh-my-zsh.sh

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# PYENV
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Aliases
pygrep() {
  grep --color -rn --include='*.py' $1 ./
}
