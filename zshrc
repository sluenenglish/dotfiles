# Path to your oh-my-zsh installation.
export ZSH=/home/sam/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
 #ZSH_THEME="agnoster"
DEFAULT_USER="sam"


# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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
plugins=(git python pip vi-mode)#, fabric)

# User configuration

#export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
#export PATH=$PATH:~/bin/:~/anaconda2/bin:~/.local/bin
export PATH=$PATH:~/bin/:~/.local/bin
# export MANPATH="/usr/local/man:$MANPATH"

export GOPATH=$HOME/gopath
export PATH=$GOPATH:$GOPATH/bin:$PATH
source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

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
# settings for virtualenv
#
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /home/sam/.local/bin/virtualenvwrapper.sh


alias rm='rm -i'

alias ipythonremote="ipython notebook --no-browser --port=8484"
alias issh="ssh -L localhost:8888:localhost:8484"


bindkey -v
export keytimeout=1

bindkey -M viins 'jk' vi-cmd-mode

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/scripts/base16-ocean.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

bindkey "^R" history-incremental-search-backward

alias mux='tmuxinator'

alias gffs="git flow feature start"
alias gfff="git flow feature finish"
alias v="vagrant"
alias vv="cd /srv/datasatellite/"

#./bin/z/z.sh

# fish && exit
#
export DATASATELLITE_SECRET_PATH="~/Dropbox\ \(Atheon\)/DataTeam/DataSatellite/Website/secret"

pkill xcape

spare_modifier="ISO_Level5_Shift"
xmodmap -e "keycode 65 = $spare_modifier"
xmodmap -e "keycode any = space"
xmodmap -e "keycode any = backslash"
xmodmap -e "keycode any = slash"
xmodmap -e "keycode 94  = Shift_L"
xmodmap -e "keycode 108 = ISO_Level3_Shift"

xcape -e "$spare_modifier=space"
xcape -e 'Alt_L=BackSpace;Shift_L=backslash;Shift_R=slash'
