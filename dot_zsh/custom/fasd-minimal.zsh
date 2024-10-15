#
# Sets shell behavior options
#
# (c) 2017 wmr <wmr101@gmail.com>
#


# Initialization
eval "$(fasd --init posix-alias zsh-hook | grep -v alias)"

# fasd shorthands
alias faf='fasd -f'    # pick file
alias fad='fasd -d'    # pick directory
alias j='fasd_cd -d'   # cd to dir
