# Create a new directory and enter it
function mkd() {
  mkdir -p "$@" && cd "$_";
}

# Determine size of a file or total size of a directory
function fs() {
  if du -b /dev/null > /dev/null 2>&1; then
    local arg=-sbh;
  else
    local arg=-sh;
  fi
  if [[ -n "$@" ]]; then
    du $arg -- "$@";
  else
    du $arg .[^.]* *;
  fi;
}

# Use locally installed Node
function ne() {
   $(npm bin)/$@
}

# Simple calculator
function calc() {
  local result="";
  result="$(printf "scale=10;$*\n" | bc --mathlib | tr -d '\\\n')";
  if [[ "$result" == *.* ]]; then
    printf "$result" |
    sed -e 's/^\./0./'        \
        -e 's/^-\./-0./'      \
        -e 's/0*$//;s/\.$//'
  else
    printf "$result";
  fi;
  printf "\n";
}
