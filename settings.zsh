ZSH_THEME='andrew'

source $HOME/.psql.conf

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_25.jdk/Contents/Home
export ANT_HOME=$HOME/dev/ant
export ANT_OPTS=-Dbuild.sysclasspath=ignore
export JVM_ARGS='-Xmx1024m -XX:MaxPermSize=256m'

export HISTIGNORE='ls:ls *:cd:cd *:pwd;exit:date:* --help:history*:&'

export PATH=$HOME/bin:/usr/local/bin:/usr/local/share/npm/bin:$ANT_HOME/bin:$PATH

export EDITOR="vim"

export HISTIGNORE="ls:ls *:cd:cd *:pwd;exit:date:* --help:history*:&"

source $HOME/.rvm/scripts/rvm

export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'
