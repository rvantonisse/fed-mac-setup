# Front-end development mac setup

Utilities and install guide to setup a fresh mac install for Front-end development.

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

Package manager for mac.

### [Caskroom/cask](https://caskroom.github.io/)

Installs applications on command line.

### Use Brewfile to install

- Atom
- Browsers (Chrome, Firefox)
- Node Package Manager (npm)

---

## Setup Git

### Global config

Add following lines to ~/.gitconfig.

Aliasses:

```
[alias]
  co = checkout
  co-master = checkout master
  mm = merge master
  new-branch = checkout -b
  remove-local = branch -D
  remove-remote = branch -rd
```

Colors:

```
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

## Setup .bashrc && .bash_profile

Some usefull .bash* utilities.
