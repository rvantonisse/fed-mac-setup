# colors
RESET="\[\033[0m\]"
RED="\[\033[0;91m\]"
GREEN="\[\033[01;92m\]"
BLUE="\[\033[01;94m\]"
YELLOW="\[\033[0;93m\]"
BOLD="\[\033[0;1m\]"

function virtualenv_info() {
    # Get Virtual Env
    if [[ -n "$VIRTUAL_ENV" ]]; then
        # Strip out the path and just leave the env name
        venv="${VIRTUAL_ENV##*/}"
    else
        # In case you don't have one activated
        venv=''
    fi
    [[ -n "$venv" ]] && echo "($venv) "
}

VENV="\$(virtualenv_info)";
export VIRTUAL_ENV_DISABLE_PROMPT=1

PS_LINE=`printf -- ' %.0s' {1..200}`

function getGitBranch() {
  PS_BRANCH=''
  PS_FILL=${PS_LINE:0:$COLUMNS}

  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  PS_BRANCH="(${ref#refs/heads/}) "
}
PROMPT_COMMAND=getGitBranch

function nice_path() {
  local resetIFS="$IFS"
  local userPath="/Users/$USER"
  local path="${PWD/$userPath/~}"

  IFS='/' read -r -a array <<<"$path"
  IFS="$resetIFS"

  if [ ${#array[@]} -gt 3 ]
  then
    local array_count=${#array[@]}
    local last=$((array_count - 1))
    echo "${array[0]}/…/${array[$((last - 1))]}/${array[$last]}"
  else
    echo "$path"
  fi
}
NICE_PATH="\$(nice_path)"

PS_INFO="$GREEN$VENV$RESET$BOLD\u@\h: $NICE_PATH"
PS_GIT="$YELLOW\$PS_BRANCH"
PS_TIME="$BOLD[\t]"
export PS1="\n\${PS_FILL}\[\033[0G\]${PS_INFO} ${PS_GIT}\n${PS_TIME}${RESET} \$ "
