# dotfiles
Configuration files of bash, aliases, more will be added in the future.
Idea is based  on dotfiles of mishavanderburg, but this is way lightened version,
since i would like to take slower steps and before i jump to using nvim i will stick
with vscode for time being.

## installation on Ubuntu 24.04

```bash
DOTFILES_DIR=$HOME/Repos/github.com/fajkoson
mkdir -p $DOTFILES_DIR
cd $DOTFILES_DIR
git clone https://github.com/fajkoson/dotfiles.git
cd dotfiles
./setup

after initial install do:
sudo apt update
sudo apt upgrade
sudo snap install starship --edge
sudo apt install neovim
sudo apt install build-essential
sudo apt install fzf

```

