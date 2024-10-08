alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias tls="tmux ls"
alias tn="tmux new -s"
alias ta="tmux attach -t"
alias tk="tmux kill-session -t"

alias gc="git add . && git commit -m 'x' && git push"

function tcd() {
  tmux command-prompt -I $(pwd) "attach -c %1" 
}

export PNPM_HOME="/Users/lukewood/Library/pnpm"
case ":$PATH:" in
    *":$PNPM_HOME:"*) ;;
      *) export PATH="$PNPM_HOME:$PATH" ;;
    esac

alias jnb="jupyter notebook"

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(git zsh-autosuggestions zsh-vim-mode)

source $ZSH/oh-my-zsh.sh

export EDITOR=vim

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

bindkey -v

alias mine="sudo chown $(whoami)"

git config --global submodule.recurse true
git config --global user.email "lukewoodcs@gmail.com"
git config --global user.name "Luke Wood"

function replace() {
  find . -type f -not -path '*/\.git/*' -print0 | xargs -0 sed -i '' -e s/$1/$2/g
}

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=~/.local/bin:$PATH
export PATH=~/bin:$PATH
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH="$PATH:$HOME/Library/Python/3.9/bin/"
export TF_CPP_MIN_LOG_LEVEL=3
export AUTOGRAPH_VERBOSITY=0

if [ -e /opt/homebrew/bin/brew ]
then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

alias plist="sudo lsof -n -i :80 | grep LISTEN"

export PATH="$PATH:/Users/lukewood/workspace/dot-files/lbin"
alias chrome-no-fr='open -a "Google Chrome" --args --disable-gpu-vsync --disable-frame-rate-limit'

export YETI_DEBUG=yeti-debug-true 

alias screenshots="cd && cd screenshots"
alias scrn="cd && cd screenshots"
