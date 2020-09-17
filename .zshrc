# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Variables {
    plugins=(
        z
        git
        fzf
        history
        extract
        docker
        zsh-autosuggestions
    )

    DEFAULT_USER=$(whoami)
    ZSH_THEME=powerlevel10k/powerlevel10k
    HISTFILESIZE=2000

    # zsh
    export ZSH="/Users/wine93/.oh-my-zsh" # Path to your oh-my-zsh installation.
    export TERM=xterm-256color # Set colors to match iTerm2 Terminal Colors

    # fzf
    export FZF_DEFAULT_OPS="--extended"

    # local
    export PATH=/Users/wine93/.local/bin:$PATH

    # Golang
    export GOROOT=/Users/wine93/.local/app/go/go1.14.4
    export PATH=${GOROOT}/bin:$PATH

    # Java
    export JAVA_HOME=/Users/wine93/.local/app/java/jdk1.8.0_261.jdk/Contents/Home
    export PATH=${JAVA_HOME}/bin:$PATH

    # Scala
    export SCALA_HOME=/Users/wine93/.local/app/scala/scala-2.13.2
    export PATH=${SCALA_HOME}/bin:$PATH

    # Maven
    export M2_HOME=/Users/wine93/.local/app/maven/apache-maven-3.6.3
    export PATH=${M2_HOME}/bin:$PATH

    # Hive
    export HIVE_HOME=/Users/wine93/.local/app/hive/apache-hive-2.3.7-bin
    export PATH=${HIVE_HOME}/bin:$PATH

    # Hadoop
    export HADOOP_HOME=/Users/wine93/.local/app/hadoop/hadoop-2.7.7
    export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
    export HADOOP_OPTS="-Djava.library.path=$HADOOP_HOME/lib"
    export PATH=${HADOOP_HOME}/bin:$PATH

    # Spark
    export SPARK_HOME=/Users/wine93/.local/app/spark/spark-3.0.0-bin-hadoop2.7
    export PATH=${SPARK_HOME}/bin:$PATH
# }


# Source {
    source $ZSH/oh-my-zsh.sh
    source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

    # To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
    [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
    [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# }


# Alias {
    export LSCOLORS="exfxcxdxbxegedabagacad"
    alias ls='ls -lGH'
    alias ranger='/Users/wine93/.local/app/ranger/ranger-1.9.3/ranger.py'
    alias vim=/usr/local/bin/vim
    alias bash=/usr/local/bin/bash
    alias fd='ranger'
    alias fs='fzf'
    alias python='python3.8'
    alias pip='pip3.8'
    alias haha='tmux attach-session'
    #alias pss='ps aux | grep'
    #alias cat="bat --theme=\$(defaults read -globalDomain AppleInterfaceStyle &> /dev/null && echo default || echo GitHub)"

    # enable_proxy () {
    #     eval 'export HTTP_PROXY="127.0.0.1:1081"'
    #     eval 'export HTTPS_PROXY="127.0.0.1:1081"'
    #     eval 'export http_proxy="127.0.0.1:8123"'
    #     eval 'export https_proxy="127.0.0.1:8123"'
    # }
# }


# Functions {
    ft() {
        f=`mktemp`
        d=`date +'%Y/%m/%d %H:%M:%S'`
        echo "$d  $f" && vim $f
    }

    dl() { ssh wine93_info@gcp-nmc -p 22 "wget -O - $1" >> $(basename $1) }
# }
