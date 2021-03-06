
alias ls="ls -G"

if [ "x`ps ax |grep [s]sh-agent`" == "x" ]; then ssh-agent; fi

PATH=$HOME/bin:/usr/local/bin:$PATH:$HOME/.rbenv/versions/current/bin

export rvm_archflags="-arch x86_64"
export EDITOR="vim"
export PATH

# Make some commands not show up in history
export HISTIGNORE="ls:ls *:cd:cd *:pwd;exit:date:* --help:history*:&"

eval "$(rbenv init -)"

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

source ~/.bash_prompt