#
# Function definitions
#
# (c) 2017 wmr <wmr101@gmail.com>
#


# cd to current directory open in Finder
if [[ ${OSTYPE} == darwin* ]]; then
cdf () {
  finderPath=`osascript -e '
  tell application "Finder"
    try
      set currentFolder to (folder of the front window as alias)
    on error
      set currentFolder to (path to desktop folder as alias)
    end try
    POSIX path of currentFolder
  end tell'`;
  cd "$finderPath"
}
fi

#
hcd() {
  local param=$1
  cd ${HOME}/.homesick/repos/${param:-"dotfiles"}
}

# Makes a directory and changes to it.
function mkdcd {
  [[ -n "$1" ]] && mkdir -p "$1" && builtin cd "$1"
}

# Changes to a directory and lists its contents.
function cdls {
  builtin cd "$argv[-1]" && ls "${(@)argv[1,-2]}"
}

# Pushes an entry onto the directory stack and lists its contents.
function pushdls {
  builtin pushd "$argv[-1]" && ls "${(@)argv[1,-2]}"
}

# Pops an entry off the directory stack and lists its contents.
function popdls {
  builtin popd "$argv[-1]" && ls "${(@)argv[1,-2]}"
}

# Prints columns 1 2 3 ... n.
function slit {
  awk "{ print ${(j:,:):-\$${^@}} }"
}

# Finds files and executes a command on them.
function find-exec {
  find . -type f -iname "*${1:-}*" -exec "${2:-file}" '{}' \;
}
