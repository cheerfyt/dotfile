# alias vim=nvim
alias hsp='https_proxy=http://192.168.10.23:7878'
alias hp='http_proxy=http://192.168.10.23:7878'
alias lhsp='https_proxy=http://localhost:8123'
alias lhp='http_proxy=http://localhost:8123'
alias ad='axel -n 10'
alias tm='tmux -2'
alias pj='prettyjson'
alias ag='ag --skip-vcs-ignores'
alias filetree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'"
alias gv='gvim .'
alias gflow='git-flow'
alias rsync='rsync --progress'
alias solc='docker run --rm ethereum/solc:stable solc'
alias supervisorctl='supervisorctl -c /usr/local/etc/supervisord.ini'

# load lang env
alias loadnvm='[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"'
alias loadgvm='source ~/.gvm/scripts/gvm'
alias loadenv='source /usr/local/bin/virtualenvwrapper.sh'

# export ENV
export PATH=$HOME/.cargo/bin:$PATH
export WORKON_HOME=$HOME/.pyenv
export NVM_DIR="$HOME/.nvm"
export SSH_KEY_PATH="$HOME/.ssh/rsa_id"
export PATH=$HOME/go/bin:$PATH
export MANPATH="/usr/local/man:$MANPATH"


# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

eval "$(thefuck --alias)"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
