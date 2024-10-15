#
# Alias setup
#
# (c) 2014 wmr <wmr101@gmail.com>
#


#
# "Global" aliases
#

alias -g C='| wc -l'
alias -g G='| grep'


#
# Aliases for shell functionality
#

alias b='${(z)BROWSER}'
alias e='${(z)VISUAL:-${(z)EDITOR}}'
alias p='${(z)PAGER}'
alias po='popd'
alias pu='pushd'
alias type='type -a'
alias plz=sudo
alias zshconf="${EDITOR} ${HOME}/.zshrc"
alias nv="${HOME}/bin/neovide"


#
# Core utilities
#

# Enable colored output in ls
if [[ ${OSTYPE} == darwin* ]]; then
  alias ls='ls -G'
else
  alias ls='ls --color'
fi

alias l='ls -1A'         # One column + hidden files.
alias ll='ls -lh'        # Human readable
alias lr='ll -R'         # Human readable, recursively.
alias la='ll -A'         # Human readable + hidden files.
alias lm='la | "$PAGER"' # Human readable + hidden files through pager.
alias llk='ll -Sr'       # Sorted by size, largest last.
alias llt='ll -tr'       # Sorted by date, most recent last.
alias llc='llt -c'       # Sorted by date, most recent last, shows change time.
alias llu='llt -u'       # Sorted by date, most recent last, shows access time.
alias llta='llt -a'      # Sorted by date, in reverse order

# accept extended regex by default
alias sed='sed -E'
alias grep='grep --color -E'


#
# Development tools
#

alias py='python'
alias py3='python3'
alias pyg='pygmentize'
alias g=git
alias k=kubectl
alias d=docker
alias pm=podman

# Serves a directory via HTTP.
alias http-serve='python -m SimpleHTTPServer'

# tmux session management
if (( $+commands[tmux] )); then
  alias tmux-ls="tmux list-sessions"

  # Attach to given session or the last
  function _wmr_tmux_attach() {
    [[ ! -z $1 ]] && tmux attach -t $* || tmux attach
  }
  alias tma=_wmr_tmux_attach
fi

# Download files with curl
if (( $+commands[curl] )); then
  alias get='curl --continue-at - --location --progress-bar --remote-name --remote-time'
fi


#
# System administration
#

alias _='sudo'

alias hs=homeshick

if (( $+commands[htop] )); then
  alias top=htop
fi

if (( $+commands[brew] )); then

  # Homebrew
  alias brewc='brew cleanup'
  alias brewC='brew cleanup --prune=all'
  alias brewi='brew install'
  alias brewl='brew list'
  alias brews='brew search'
  alias brewu='brew update && brew upgrade'
  alias brewx='brew remove'
fi


#
# Disable correction
#

alias ack='nocorrect ack'
alias ag='nocorrect ag'
alias cd='nocorrect cd'
alias cp='nocorrect cp'
alias gcc='nocorrect gcc'
alias gist='nocorrect gist'
alias heroku='nocorrect heroku'
alias ln='nocorrect ln'
alias man='nocorrect man'
alias mkdir='nocorrect mkdir'
alias mv='nocorrect mv'
alias rm='nocorrect rm'
alias mdfind='nocorrect mdfind'


#
# Disable globbing.
#

alias bower='noglob bower'
alias fc='noglob fc'
alias find='noglob find'
alias ftp='noglob ftp'
alias history='noglob history'
alias locate='noglob locate'
alias rake='noglob rake'
alias rsync='noglob rsync'
alias scp='noglob scp'
alias sftp='noglob sftp'
alias rg='noglob rg'
alias ag='noglob ag'
