_configset() {
  COMPREPLY=()
  local word="${COMP_WORDS[COMP_CWORD]}"
  local words=("${COMP_WORDS[@]}")
  unset words[0]
  local completion=$(configset completion ${words[@]})
  COMPREPLY=( $(compgen -W "$completion" -- "$word") )
}

complete -F _configset configset
