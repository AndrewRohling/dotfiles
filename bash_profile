
alias ls="ls -G"

PATH=$PATH:$HOME/bin:$HOME/.rbenv/versions/current/bin

export rvm_archflags="-arch x86_64"
export EDITOR="vim"
export PATH

# Make some commands not show up in history
export HISTIGNORE="ls:ls *:cd:cd -:pwd;exit:date:* --help"

eval "$(rbenv init -)"

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

source ~/.bash_prompt