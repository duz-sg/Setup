# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

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
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git osx history history-substring-search)

# User configuration

export PATH="/usr/local/opt/coreutils/libexec/gnubin:$HOME/.vim/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/Setup"
export PATH="$PATH:/usr/local/opt/postgresql@9.5/bin"
export PATH="$PATH:$HOME/perl5/bin"
export PATH="$PATH:$HOME/perl5/lib/perl5"
export PATH="$PATH:$HOME/perl5/lib/perl5/darwin-thread-multi-2level"
export PERL5LIB="$PATH:$HOME/perl5/lib/perl5/darwin-thread-multi-2level"
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
#
# Alias for user path
alias sshdev='ssh duzheng@swiss-web-dev.fixedandmobile.com'
alias sshmac='ssh duzheng@macau-web-dev.fixedandmobile.com'
alias sshprod='ssh duzheng@swiss-web-prod.fixedandmobile.com'
alias sshswiss='ssh duzheng@swiss-eqx.fixedandmobile.com'
alias sshint='ssh duzheng@internal-web-prod.fixedandmobile.com'
alias sshpri='ssh duzheng@swiss-pri.fixedandmobile.com'
alias sshjob='ssh du.zheng@jobs1-sg-pri.fixedandmobile.com'
alias sshlog='ssh du.zheng@logger-sg-pri.fixedandmobile.com'
alias sshvat='ssh duzheng@vatican-eqx.fixedandmobile.com'
alias sshwpr='ssh du.zheng@workers1.mmhpreprod.com'

if which plenv > /dev/null; then eval "$(plenv init - zsh)"; fi

source ~/.iterm2_shell_integration.`basename $SHELL`

# Color coding for MAC
alias ls='pwd;ls -GFh --color'
alias l='ls -ltr'
alias ll='ls -ltr'
alias la='l -a'

# Use original git diff, open with vim read only mode
function git_diff()
{
  git diff --no-ext-diff -w "$@" | vim -R -
}

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/duz/Dropbox/Education/OSU/CS496/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/duz/Dropbox/Education/OSU/CS496/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/duz/Dropbox/Education/OSU/CS496/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/duz/Dropbox/Education/OSU/CS496/google-cloud-sdk/completion.zsh.inc'; fi

export PATH="/Users/duz/.pyenv/bin:$PATH"
export PATH="/Users/duz/.poetry/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PATH="/usr/local/opt/libpq/bin:$PATH"
eval "$(nodenv init -)"
export PATH="/usr/local/go/bin:$PATH"
