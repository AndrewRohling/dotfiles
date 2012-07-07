
alias ls="ls -G"

PS1="[\u:\w] "

PATH=$PATH:$HOME/bin:$HOME/.rbenv/versions/current/bin

export rvm_archflags="-arch x86_64"
export EDITOR="vim"
export PATH

eval "$(rbenv init -)"

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi


