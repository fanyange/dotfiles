# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
# ZSH_THEME="cobalt2"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse bundler)
plugins=(git brew gem powder liquidluck rails ruby heroku github bundler vagrant)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

export PATH=$PATH:$HOME/bin
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PYTHONPATH=$HOME/py/modules:$PYTHONPATH
export VPSIP=192.241.202.211
export PATH=~/.cabal/bin:$PATH

unsetopt correct_all
# alias youku="python ~/apps/youku-lixian/youku.py"
alias clj="java -cp /Users/maorui/apps/clojure-1.6.0.jar clojure.main"
alias aria2c="aria2c -x10"
alias lx="python ~/apps/xunlei-lixian/lixian_cli.py"
# alias you-get="python3 ~/apps/you-get/you-get"
alias at=". ~/ve/bin/activate"
alias at3=". ~/ve3/bin/activate"
alias pipup="pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs pip install -U"
alias timer="ruby /Users/maorui/scripts/timer.rb"
alias vpn_choose="ruby /Users/maorui/scripts/vpn_choose.rb"
alias psfind="ps ax | grep"
alias cdk="cd ~/Desktop"
alias cdl="cd ~/Downloads"
alias cdm="cd ~/Movies"
alias s="subl"
alias s3="subl3"
alias m="mate"
alias rrr="rbenv rehash"

. /Users/maorui/scripts/z/z.sh

eval "$(rbenv init -)"

export BUNDLER_EDITOR=mate
export CLICOLOR=1
export LSCOLORS=exfxcxdxbxexexabagacad
alias sn="subl -n"
alias sn3="subl3 -n"
alias rake="noglob bundled_rake"
alias irb="irb --simple-prompt"
alias brew="ALL_PROXY=127.0.0.1:65432 brew"
alias pip="pip --proxy 127.0.0.1:65432"
alias t='python /Users/maorui/apps/t/t.py --task-dir ~/tasks --list tasks'
alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --use-spdy=off'
source ~/ve/bin/activate
# export http_proxy=127.0.0.1:65432
# export https_proxy=127.0.0.1:65432
