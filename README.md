# Front-end development mac setup

Utilities and install guide to setup a fresh mac install for Front-end development.

Installs:
- Homebrew package manager

- Editor: Atom    

- Code: nvm(node), php, composer, python, ruby(rbenv)

- Developer tools: git, git-extras, bash-completion, filezilla, virtualbox

- Browsers: Google Chrome, Firefox, Microsoft Edge

---

## Table of contents

0. [Install Homebrew](#install-homebrew)
0. [Download this project](#download-this-project)
1. [Install software with Homebrew](#install-software-with-homebrew)
2. [Setup ssh key](#setup-ssh-key)
4. [Setup git](#setup-git)

---

## Install Homebrew

Install [Homebrew](https://brew.sh)

---

## Download this project

Use OS git version or unzip:

```shell
    git clone https://github.com/rvantonisse/fed-mac-setup.git

    cd fed-mac-setup
```

Commands run from now on asume you are inside `fed-mac-setup/` directory.

---

## Install software with Homebrew
Install using the Brewfile:

```shell
    brew bundle
```

This will tap `Homebrew/bundle` and install everything listed inside the `Brewfile`.

---

## Setup shell profile

copy shell profile:

```shell
    cp ./shell-setup/shell_profile.sh ~/.shell_profile

    cp ./shell-setup/shell_prompt.sh ~/shell_prompt.sh
```

Or alternatively **zsh** profile:

```shell
  cp ./zsh-setup/.zshrc ~/.zshrc
```

The brewfile installed the cli plugin Powerlevel10k which gives a nice interface for zsh.

---


## Setup Git

### Global config

Copy the `.gitconfig` to `~/` and edit `<…>`-fields:

```shell
    cp .git-setup/.gitconfig ~/ && atom .gitconfig
```

### SSH setup

Follow [Setup ssh key](https://help.github.com/en/github/authenticating-to-github/adding-a-new-ssh-key-to-your-github-account) from Github help.

And copy config for ssh:

```shell
    cp ./ssh-setup/config ~/.ssh/config
```

---

## Node with node version manager (nvm)

- With nvm command, install latest Long Term Support (lts) node version and set to default:

  ```shell
  nvm install --lts

  nvm alias default $(nvm version)
  ```

## TODO

- [ ] Create `grab_some_coffee.sh` script for convenience
