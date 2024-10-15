#
# Dircolors setup
#
# (c) 2017 wmr <wmr101@gmail.com>
#


# macOS may have gdircolors
if (( $+commands[gdircolors] )); then
  DIRCOLORS_CMD=gdircolors
elif (( $+commands[dircolors])); then
  DIRCOLORS_CMD=dircolors
fi

[[ ! -z DIRCOLORS_CMD ]] && eval $(${DIRCOLORS_CMD} -b ${HOME}/.dircolors)

# cleanup
unset DIRCOLORS_CMD
