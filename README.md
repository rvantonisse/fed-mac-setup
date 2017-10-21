# Front-end development mac setup

Utilities and install guide to setup a fresh mac install for Front-end development.

## Table of contents

## Install XCode and Xcode Command line tools

Install Xcode from the App store, then install Xcode Command line tools in terminal:
```bash
$ xcode-select --install
```

## Mas

Used to install from appstore on command line.

## [Homebrew](https://brew.sh/)

Package manager for mac.

### [Caskroom/cask](https://caskroom.github.io/)

Installs applications on command line.

### Use Brewfile to install

- Atom
- Browsers (Chrome, Firefox)
- Node Package Manager (npm)

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

## [Setup ssh key](https://docs.joyent.com/public-cloud/getting-started/ssh-keys/generating-an-ssh-key-manually/manually-generating-your-ssh-key-in-mac-os-x)

Follow steps and use for git / other ssh services.


## Setup .bashrc && .bash_profile

Some usefull .bash* utilities.
