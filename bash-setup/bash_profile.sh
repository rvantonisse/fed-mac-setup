# Homebrew
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# Ruby env
eval "$(rbenv init -)"

# Bash completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# Git branch status
[ -f ~/Githubs/git-branch-status/git-branch-status ] && alias gbs=~/Githubs/git-branch-status/git-branch-status

# NVM
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

# VIRTUALENV
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Dev
source /usr/local/bin/virtualenvwrapper.sh

# enable custom PROMPT
[ -f ~/bash_prompt.sh ] && . ~/bash_prompt.sh


# ALIASSES
# Homebrew
function brewup() {
  echo "Update"
  brew update

  echo "Upgrade"
  brew upgrade

  echo "Cleanup"
  brew cleanup

  echo "Doctor"
  brew doctor
}


# Mount/unmount volumes
function mount_someSparsebundle() {
  [-f ~/some.sparsebundle] && hdiutil attach ~/some.sparsebundle && cd /Volumes/some/;
}

function unmount_someSparsebundle() {
  cd ~ && hdiutil unmount "/Volumes/some/";
}
