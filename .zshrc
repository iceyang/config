# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
ZSH_THEME="amuse"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#

# User configuration
export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8
export SVN_EDITOR=vim

export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export GRADLE_HOME=/usr/local/gradle-2.2.1
export SCALA_HOME="/usr/local/scala"
export SBT_OPTS="-Dsbt.override.build.repos=true -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=256M"
export AKKA_HOME="/usr/local/akka"

# Docker configuartion
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/iceyang/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
export DOCKER_CERT_PATH=/Users/iceyang/.boot2docker/certs/

export PATH="$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH:/usr/local/mysql/bin:/usr/local/mongodb/bin:$SCALA_HOME/bin:$GRADLE_HOME/bin:/usr/local/activator-dist-1.3.5:/usr/local/qrsctl"

export NODE_ENV='development'

export GOBIN="/Users/iceyang/project/go/bin"
export GOPATH="/Users/iceyang/project/go"

# set vim alias
export TMUX_POWERLINE_SEG_WEATHER_LOCATION="2161838"

source ~/.vipcrc

# sbt repo
alias repox="java -Xmx512m -jar /Users/iceyang/project/repox/target/scala-2.11/repox-assembly-0.1-SNAPSHOT.jar"

# set proxychains
alias gfw=proxychains4

#alias
alias coffeepwd="coffee -o . -cw ."
alias vim="/usr/local/Cellar/macvim/7.4-73_1/MacVim.app/Contents/MacOS/Vim"

alias 90="connect 90"
alias 94="connect 94"
alias 95="connect 95"
alias 243="connect 243"

alias node001="connect node001"
alias node002="connect node002"
alias node003="connect node003"
alias vbox="VBoxManage"

alias ll="ls -al"
