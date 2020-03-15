# Front-end development mac setup

Utilities and install guide to setup a fresh mac install for Front-end development. Unzip this locally and follow this guide.

Open up a terminal and go to this unzipped folder `fed-mac-setup`. All commands should be run from there.

## Table of contents

1. [Install Xcode](#install-xcode-and-xcode-command-line-tools)
2. [Setup ssh key](#setup-ssh-key)
3. [Get Homebrew and applications](#homebrew)
4. [Setup git](#setup-git)

---

## Install XCode and Xcode Command line tools

Install Xcode from the App store, then install Xcode Command line tools in terminal:

```bash
    # This step may be skipped, Homebrew will install this for you.
    xcode-select --install
```

---

## Setup .bashrc && .bash_profile

copy bash profile:

```bash
    cp ./bash-setup/bash_profile.sh ~/.bash_profile

    cp ./bash-setup/bash_prompt.sh ~/bash_prompt.sh
```

---

## [Setup ssh key](https://help.github.com/en/github/authenticating-to-github/adding-a-new-ssh-key-to-your-github-account)

Follow steps and use for git / other ssh services.

---

## [Homebrew](https://brew.sh/)

Install:

```bash
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```


Package manager for mac. Follow install instructions for Homebrew then after run:

```bash
    brew tap homebrew/bundle && brew bundle
```

This will install everything listed inside Brewfile.

### [Caskroom/cask](https://caskroom.github.io/)

Installs applications on command line.

### Use Brewfile to install

- Atom (editor)
- Browsers (Chrome, Firefox)
- iTerm (command line interface)
- FileZilla
- Virtualbox
- nvm (node)
- yarn (without node)
- PHP, Composer
- Python
- rbenv (Ruby version manager)

---

## Setup Git

### Global config

Copy the `.gitconfig` to `~/` and edit `<…>`-fields:

```bash
cp .git-setup/.gitconfig ~/ && atom .gitconfig
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

---

## Install Python utilities

Use `pip install` for python global dependencies.

- Check on [pipenv and virtualenv](http://docs.python-guide.org/en/latest/dev/virtualenvs/) for best approach.
