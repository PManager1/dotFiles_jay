# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


alias os="open -a safari"

alias of="open -a firefox"

alias oc="open -a /Applications/Google\ Chrome.app"

alias ocns="oc  --args --disable-web-security"


alias v="open -a MacVim.app"

alias sub="open -a /Applications/Sublime\ Text\ 2.app"

alias brackets="open -a /Applications/Brackets.app"

alias at="open -a /Applications/Atom.app"

alias v="open -a /Applications/MacVim.app"



alias g='git'
alias gu='gulp'

alias cu='cap deploy:upload'   #  cu FILES='app/views/rooms/room-home.jade'  
alias st='git status'
alias ss='svn status'

alias ch='cherry-pick'

alias s='git status -uno'
alias gl='git pull'
alias gp='git push'
alias gd='git diff | mate'
alias a='git add -A'
alias au='git add -u'
alias gau='git add --update'
alias c='git commit -v'
alias gca='git commit -v -a'
alias gb='git branch'
alias b='git branch'
alias gba='git branch -a'
alias gco='git checkout'
alias co='git checkout'
alias cob='git checkout -b'
alias gcot='git checkout -t'
alias gcotb='git checkout --track -b'
alias lo='git log --graph --all --decorate'
alias gph="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gph2='git log --pretty=format:"%h %s" --graph'
alias ni='npm install'
alias n='node'
alias np='npm'
alias no='nodemon'
alias l='ls'
alias ll='l'
alias i='install'

alias gh='git reset --hard'





alias py='python -m SimpleHTTPServer'
alias kpy='kill %1'

alias hs='http-server -p'  

alias cpd='cap production deploy'


alias gw='gulp watch'



# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin



#theme #theme #theme #theme  #theme #theme #theme #theme  

function collapse_pwd {
    echo $(pwd | sed -e "s,^$HOME,~,")
}

function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '±' && return
    hg root >/dev/null 2>/dev/null && echo '☿' && return
    echo '○'
}

function battery_charge {
    echo `$BAT_CHARGE` 2>/dev/null
}

function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

function hg_prompt_info {
    hg prompt --angle-brackets "\
< on %{$fg[magenta]%}<branch>%{$reset_color%}>\
< at %{$fg[yellow]%}<tags|%{$reset_color%}, %{$fg[yellow]%}>%{$reset_color%}>\
%{$fg[green]%}<status|modified|unknown><update>%{$reset_color%}<
patches: <patches|join( → )|pre_applied(%{$fg[yellow]%})|post_applied(%{$reset_color%})|pre_unapplied(%{$fg_bold[black]%})|post_unapplied(%{$reset_color%})>>" 2>/dev/null
}

PROMPT='
%{$fg[magenta]%}%n%{$reset_color%} at %{$fg[yellow]%}%m%{$reset_color%} in %{$fg_bold[green]%}$(collapse_pwd)%{$reset_color%}$(hg_prompt_info)$(git_prompt_info)
$(virtualenv_info)$(prompt_char) '

RPROMPT='$(battery_charge)'

ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""



function mkcd () { mkdir -p "$@" && eval cd "\"\$$#\""; }





export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting


export GOPATH=$HOME/go

##NETGEAR changes

alias connect='ssh -i ~/Dropbox/Rypher/rypherkey.pem ubuntu@52.0.38.101'




alias cpd='cap production deploy'

alias connect-marketing='ssh -l jprateek -i ~/Desktop/jprateek2.pem vznotify1.netgear.com'

alias connect-m='ssh -l jprateek -i ~/Desktop/jprateek2.pem arlobat-dev.netgear.com'

alias connect-qa='ssh -l jprateek -i ~/Dropbox/NetGear-dbox/Code-Netgear-db/MARKETING/MARKETING_CODE/Keys/jay.prateek.key arlobat-qa.netgear.com'


alias connect-dev='ssh -l jprateek -i ~/Desktop/jprateek.pem arlobat-dev.netgear.com'

alias dev1='ssh -l jprateek -i ~/Desktop/jprateek.pem vzweb01-dev-int.netgear.com'

alias dev2='ssh -l jprateek -i ~/Desktop/jprateek.pem vzweb02-dev-int.netgear.com'



export PATH=${PATH}:$HOME/adt-bundle/sdk/platform-tools:/Development/adt-bundle/sdk/tools

export SVN_SSH='ssh -i /Users/jay/.ssh/jay.prateek.key'


##export SVN_SSH='ssh -i /home/user/.ssh/jay.prateek.key'






























