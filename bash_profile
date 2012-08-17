
alias ls="ls -G"

MYSQL=/usr/local/mysql

PATH=$HOME/bin:/usr/local/bin:$PATH:$MYSQL/bin

export SOLR_DIST="/Users/andrewrohling/Source/apache-solr-3.6.0"
export TOMCAT_HOME="/Users/andrewrohling/Source/apache-tomcat-6.0.35"
export rvm_archflags="-arch x86_64"
export EDITOR="vim"
export PATH

# Make some commands not show up in history
export HISTIGNORE="ls:ls *:pwd;exit:date:* --help:history*:&"

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

source ~/.bash_prompt