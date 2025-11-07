# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"



# Function definitions to fix "command not found" errors

# 1. Shows abbreviated path (~ for home)
function collapse_pwd {
    echo $(pwd | sed -e "s,^$HOME,~,")
}

# 2. Shows Python virtual environment name
function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

# 3. Shows battery charge (Requires BAT_CHARGE variable, otherwise may fail)
# Note: This function often relies on a macOS tool or variable that might not be set.
function battery_charge {
    # If the BAT_CHARGE variable is set (e.g., by a separate script), use it.
    # Otherwise, you might need a dedicated macOS script for battery info.
    # We will keep the original implementation but note it might not display anything.
    echo `$BAT_CHARGE` 2>/dev/null
}

# 4. Defines the prompt character based on VCS status (needed for your PROMPT definition)
function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '±' && return
    hg root >/dev/null 2>/dev/null && echo '☿' && return
    echo '○'
}

# Function for Mercurial (HG) prompt info (already provided, but included for completeness)
function hg_prompt_info {
    hg prompt --angle-brackets "\
< on %{$fg[magenta]%}<branch>%{$reset_color%}>\
< at %{$fg[yellow]%}<tags|%{$reset_color%}, %{$fg[yellow]%}>%{$reset_color%}>\
%{$fg[green]%}<status|modified|unknown><update>%{$reset_color%}<
patches: <patches|join( → )|pre_applied(%{$fg[yellow]%})|post_applied(%{$reset_color%})|pre_unapplied(%{$fg_bold[black]%})|post_unapplied(%{$reset_color%})>>" 2>/dev/null
}

# --- PROMPT DEFINITION (Place this AFTER the functions) ---

PROMPT='
%{$fg[magenta]%}%n%{$reset_color%} at %{$fg[yellow]%}%m%{$reset_color%} in %{$fg_bold[green]%}$(collapse_pwd)%{$reset_color%}$(hg_prompt_info)$(git_prompt_info)
$(virtualenv_info)$(prompt_char) '

RPROMPT='$(battery_charge)'



alias ..="cd .."


alias et="sudo rm -ri ~/.Trash"


alias allow="sudo chmod a+rwx"

alias jc= "sudo chown -R jay $(pwd)"


alias rmf="sudo rm -rf"

alias eds="find . -type f -name '*.DS_Store' -ls -delete"


alias acm='git add -A && git commit -m'

# alias ac="git add . && c -m' - '"

alias ac="git add . && c --no-verify -m' - '"


alias dr="git push origin --delete"
alias dl="git branch -D"

alias ni="sudo npm install"


alias br="sudo git branch -a"


alias acp="git add . && c -m' - ' && gpa"

alias os="open -a safari"

alias of="open -a firefox"

alias oc="open -a /Applications/Google\ Chrome.app"
alias occ="open -a /Applications/Google\ Chrome\ Canary.app"

alias ocns="oc  --args --disable-web-security"

alias occns="occ  --args --disable-web-security"

alias v="open -a MacVim.app"

alias sub="open -a /Applications/Sublime\ Text.app/"

alias vs="open -a /Applications/Visual\ Studio\ Code.app"

alias bra="open -a /Applications/Brackets.app"

alias at="open -a /Applications/Atom.app"


alias g='git'
alias y='sudo yarn'
alias yi='sudo yarn install'
alias ya='sudo yarn add'

alias gu='gulp'

alias cm='git commit --amend --no-verify'

alias gmv='git commit --amend'

alias cu='cap deploy:upload'   #  cu FILES='app/views/rooms/room-home.jade'
alias st='git status'


alias ch='cherry-pick'

alias s='git status -uno'
alias gl='git pull'
alias gp='git push origin'
# alias gpa='git push --all origin'
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

alias loo='git log -3'

alias gm='git merge'
alias gdd='b -D'


alias gph="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gph2='git log --pretty=format:"%h %s" --graph'
alias np='npm'
alias no='nodemon'
alias l='ls'
alias ll='l'
alias i='install'
alias gh='git reset --hard'


din() {
    local d='docker exec -it'
    local b="docker exec -it $1 /bin/bash"
    eval $b
}

alias ds='sudo docker stop $(docker ps -a -q)'


# YOU ALWAYS HAVE TO GIVE AN ARGUMENT AFTER THE MONGO EXPORT COMMAND FOR THE FILE NAME YOU WANT IT TO BE USED.

# alias lrem='db.properties.remove({})'


alias py='python -m SimpleHTTPServer'
alias kpy='kill %1'

alias hs='http-server -p'

alias cpd='cap production deploy'

alias gu='sudo gulp'

alias mkd='sudo mkdir'


# alias gostart=  // put here for go start commands. 


