# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Pure theme
# autoload -U promptinit; promptinit
# prompt pure

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME=""

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
plugins=(git zsh-nvm zsh-autosuggestions zsh-syntax-highlighting docker docker-compose kubectl vi-mode)

# User configuration

export PATH="$HOME/.local/share/umake/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:$HOME/.local/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='vim'

export MYVIMRC="$HOME/.vimrc"

# Set Vim mode for terminal
# set -o vi
# bindkey -v

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

eval "$(thefuck --alias)"
# You can use whatever you want as an alias, like for Mondays:
eval "$(thefuck --alias fuck)"

# Yarn
export PATH="$PATH:`yarn global bin`"

# Deno
 export PATH=$HOME/.deno/bin:$PATH

# Go Lang
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/go/bin
export GOPATH=$HOME/go

# Rust Cargo
export PATH=$PATH:$HOME/.cargo/bin

# Google Chrome
alias chrome='/opt/google/chrome/chrome'

# Sublime Text
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

# Vim - use brew version
alias vim='/usr/local/opt/vim/bin/vim'

# Nvim - use brew verison
alias nvim='/usr/local/opt/neovim/bin/nvim'

# Emacs
alias emacs='emacs --no-window-system'

# xclip
alias xclip='xclip -selection -c'

# GPG key
export GPG_TTY=$(tty)

# Fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# rbenv for Ruby
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# PHP composer
export PATH="$HOME/.composer/vendor/bin:$PATH"

# Use `gi` command to generate .gitignore file.
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

# Python
alias python='python3'
alias pip='pip3'


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/tin/apps/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/tin/apps/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/tin/apps/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/tin/apps/google-cloud-sdk/completion.zsh.inc'; fi

# Kubernetes Krew
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# Starship theme
eval "$(starship init zsh)"

# Anaconda
export PATH="/Users/tin/opt/anaconda3/bin:$PATH"

# Confluent Kafka
export CONFLUENT_HOME=/Users/tin/apps/confluent
export PATH=$PATH:$CONFLUENT_HOME/bin
export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home/

# Brew
export HOMEBREW_NO_INSTALLED_DEPENDENTS_CHECK=1

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/tin/.nvm/versions/node/v10.16.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/tin/.nvm/versions/node/v10.16.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/tin/.nvm/versions/node/v10.16.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/tin/.nvm/versions/node/v10.16.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/tin/.nvm/versions/node/v10.16.0/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/tin/.nvm/versions/node/v10.16.0/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh

source /Users/tin/Library/Preferences/org.dystroy.broot/launcher/bash/br

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform

# Wasmer
export WASMER_DIR="/Users/tin/.wasmer"
[ -s "$WASMER_DIR/wasmer.sh" ] && source "$WASMER_DIR/wasmer.sh"
