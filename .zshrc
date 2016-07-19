# Path to your oh-my-zsh installation.
export ZSH=/home/naoric/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

DEFAULT_USER="naoric"

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
plugins=(git zsh-autosuggestions git-flow-completions sublime)

# User configuration

  export PATH="/bin:/usr/bin:/usr/local/bin:/usr/local/sbin:/usr/sbin:/home/naoric/.local/bin:/home/naoric/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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
alias edit="vim ~/.zshrc && source ~/.zshrc"
alias reload="source ~/.zshrc"
alias i="sudo dnf install -y"
alias ni="npm i"
alias nis="npm i -S"
alias nid="npm i -D"
alias nig="npm i -g"
alias addrepo="sudo dnf config-manager --add-repo"
alias update="sudo dnf update"
alias mk="mkdir -p"
alias spot="cd ~/projects/spotauction-client"
alias afind="alias | grep"
alias t="typings" 
alias nrd="npm run dev"
alias c="git commit -am"
alias groot='cd $(git rev-parse --show-cdup)'

mm() {
  mk $1 && cd $1
}

ti() {
  typings install -G -S dt~$1
}

function module() {
  touch $1{,.test}.ts
}

function chpwd() {
    emulate -L zsh
    clear && ll    
}

export NVM_DIR="/home/naoric/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


# tabtab source for yo package
# uninstall by removing these lines or running `tabtab uninstall yo`
[[ -f /home/naoric/.nvm/versions/node/v6.1.0/lib/node_modules/yo/node_modules/tabtab/.completions/yo.zsh ]] && . /home/naoric/.nvm/versions/node/v6.1.0/lib/node_modules/yo/node_modules/tabtab/.completions/yo.zsh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_COMMAND='ag -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
bindkey '^s' fzf-file-widget
export PATH="/home/naoric/.linuxbrew/bin:$PATH"
export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"
