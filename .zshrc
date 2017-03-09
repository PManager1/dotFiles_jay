# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

#NETGEAR

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias cap="cap production deploy"

alias dr="git push origin --delete"
alias dl="git branch -D"

alias ni="sudo npm install"

alias p1="sudo gulp prod"
alias p2="sudo ionic serve --port 80"

alias d1="sudo gulp prod"
alias d2="sudo ionic serve --port 80"
alias d3="sudo mongod"

alias iu="ionic upload"
alias is="ionic serve"

alias ac="git add . && c -m' - '"

alias acp="git add . && c -m' - ' && gpa"

alias ud="ssh jp@192.168.82.152"

alias os="open -a safari"

alias of="open -a firefox"

alias oc="open -a /Applications/Google\ Chrome.app"
alias occ="open -a /Applications/Google\ Chrome\ Canary.app" 

alias ocns="oc  --args --disable-web-security"

alias occns="occ  --args --disable-web-security"

alias v="open -a MacVim.app"

alias sub="open -a /Applications/Sublime\ Text.app"

alias vs="open -a /Applications/Visual\ Studio\ Code.app"

alias bra="open -a /Applications/Brackets.app"

alias at="open -a /Applications/Atom.app"

alias v="open -a /Applications/MacVim.app"

alias g='git'
alias gu='gulp'

alias gam='git commit --amend'

alias cu='cap deploy:upload'   #  cu FILES='app/views/rooms/room-home.jade'  
alias st='git status'
alias ss='svn status'

alias ch='cherry-pick'

alias s='git status -uno'
alias gl='git pull'
alias gp='git push'
alias gpa='git push --all origin'
alias gpd='git push -u origin dev-2'
alias gd='git diff | mate'
alias a='git add --all'
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
alias np='npm'
alias no='nodemon'
alias l='ls'
alias ll='l'
alias i='install'

alias gh='git reset --hard'


alias ladd='mongoimport --db mean-dev --collection properties --jsonArray --file '
alias ladd-d='mongoimport --db mean-dev --collection properties --drop --jsonArray --file '



alias ladda='mongoimport --db mean-dev --collection articles --jsonArray --file' 
alias ladd-da='mongoimport --db mean-dev --collection articles --drop --jsonArray --file '



alias sadda='mongoimport --db mean --collection articles --jsonArray --file' 
alias sadd-da='mongoimport --db mean --collection articles --drop --jsonArray --file '



# alias lrem='db.properties.remove({})'

alias sadd='mongoimport --db mean --collection properties --jsonArray --file '
alias sadd-d='mongoimport --db mean --collection properties --drop --jsonArray --file '

alias lex='mongoexport --jsonArray --db mean-dev --collection properties  --out '
alias sex='mongoexport --jsonArray --db mean --collection properties  --out '

 
alias py='python -m SimpleHTTPServer'
alias kpy='kill %1'

alias hs='http-server -p'  

alias cpd='cap production deploy'

alias gu='sudo gulp'

alias ec='sudo ssh -i ~/Dropbox/Life_Changing_Mentoring_Program/CODE/Server-LTG/"ltg7.pem" ubuntu@ec2-34-193-168-63.compute-1.amazonaws.com'

alias ecw='sudo ssh -i ~/Dropbox/Life_Changing_Mentoring_Program/CODE/Server-LTG/"website.pem" ubuntu@ec2-34-195-117-28.compute-1.amazonaws.com'

alias ecm='sudo ssh -i ~/Dropbox/Life_Changing_Mentoring_Program/CODE/Server-LTG/"ltg5.pem" ubuntu@ec2-54-157-254-96.compute-1.amazonaws.com'

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

function rm () { mkdir -p "$@" && eval cd "\"\$$#\""; }

export GOPATH=$HOME/go

alias cpd='cap production deploy'

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
