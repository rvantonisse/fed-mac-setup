# Front-end development mac setup

Utilities and install guide to setup a fresh mac install for Front-end development. Unzip this locally and follow this guide.

## Table of contents

1. [Install Xcode](#install-xcode-and-xcode-command-line-tools)
2. [Setup ssh key](#setup-ssh-key)
3. [Get Homebrew and applications](#homebrew)
4. [Setup git](#setup-git)

---

## Install XCode and Xcode Command line tools

Install Xcode from the App store, then install Xcode Command line tools in terminal:
```bash
$ xcode-select --install
```

---

## [Setup ssh key](https://docs.joyent.com/public-cloud/getting-started/ssh-keys/generating-an-ssh-key-manually/manually-generating-your-ssh-key-in-mac-os-x)

Follow steps and use for git / other ssh services.

---

## [Homebrew](https://brew.sh/)

Package manager for mac. Follow install instructions for Homebrew then after run:
```bash
# Where Brewfile lives
$ brew tap homebrew/bundle && brew bundle
```

### [Caskroom/cask](https://caskroom.github.io/)

Installs applications on command line.

### Use Brewfile to install

- Atom (editor)
- Browsers (Chrome, Firefox)
- iTerm (command line interface)
- Node Package Manager (npm)
- Python

---

## Setup Git

### Global config

Create / Add following lines to ~/.gitconfig.

```bash
$ touch .gitconfig && atom .gitconfig
```

```
[user]
    name = <YOUR NAME>
[alias]
    co = checkout
    co-master = checkout master
    mm = merge master
    new-branch = checkout -b
    remove-local = branch -D
    remove-remote = branch -rd
[color]
	branch = auto
	diff = auto
	status = auto
[color "branch"]
	current = yellow reverse
	local = yellow
	remote = green
[color "diff"]
	meta = yellow bold
	frag = magenta bold
	old = red bold
	new = green bold
[color "status"]
	added = yellow
	changed = green
	untracked = cyan
```

---

## Node with node version manager (nvm)

- [Install nvm](https://github.com/creationix/nvm) and restart terminal
- install latest node:

  ```bash
  $ nvm install node
  ```
- Use it

  ```bash
  $ nvm use node
  ```

---

## Install Python utilities

Use `pip install` for python global dependencies.

- Check on [pipenv and virtualenv](http://docs.python-guide.org/en/latest/dev/virtualenvs/) for best approach.

---

## Setup .bashrc && .bash_profile

Create a `.bash_profile`:

```bash
$ touch .bash_profile && atom .bash_profile
```

Add following:

```bash
# Bash completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

```
