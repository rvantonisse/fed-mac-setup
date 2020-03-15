# Front-end development mac setup

Utilities and install guide to setup a fresh mac install for Front-end development.

Tech Stack installed:
- Editor: Atom    

- Code: node(nvm), yarn, php, composer, python(3 & 2), ruby(rbenv)

- DevOps: git, git-extras, bash-completion, filezilla, httpd, dnsmasq, virtualbox

- Browsers: Google Chrome, Firefox, Microsoft Edge

---

## Table of contents

0. [Download this project](#download-this-project)
1. [Install software with Homebrew](#install-software-with-homebrew)
2. [Setup ssh key](#setup-ssh-key)
4. [Setup git](#setup-git)

---

## Download this project

Use OS git version or unzip:

```bash
    git clone https://github.com/rvantonisse/fed-mac-setup.git

    cd fed-mac-setup
```

Commands run from now on asume you are inside `fed-mac-setup/` directory.

---

## Install software with Homebrew

Install [Homebrew](https://brew.sh/):

```bash
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

Follow install instructions for Homebrew then after install software with Brewfile:

```bash
    brew tap homebrew/bundle && brew bundle
```

This will install everything listed inside Brewfile, run `cat` to list the software:

```bash
    cat Brewfile
```
---

## Setup bash profile

copy bash profile:

```bash
    cp ./bash-setup/bash_profile.sh ~/.bash_profile

    cp ./bash-setup/bash_prompt.sh ~/bash_prompt.sh
```

TODO:

- [ ] Update with new `zsh` setup for macos 10.15 (Catalina) and newer.

---


## Setup Git

### Global config

Copy the `.gitconfig` to `~/` and edit `<…>`-fields:

```bash
    cp .git-setup/.gitconfig ~/ && atom .gitconfig
```

### SSH setup

Follow [Setup ssh key](https://help.github.com/en/github/authenticating-to-github/adding-a-new-ssh-key-to-your-github-account) from Github help.

And copy config for ssh:

```bash
    cp ./ssh-setup/config ~/.ssh/config
```

---

## Node with node version manager (nvm)

- install latest node version:

  ```bash
  nvm install node
  ```

- Use it

  ```bash
  nvm use node
  ```

## TODO

- [ ] Create `grab_some_coffee.sh` script for convenience
