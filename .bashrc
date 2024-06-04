# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# keybinds
bind -x '"\C-l":clear'

# ----------- env variables -----------

export VISUAL=nvim
export EDITOR=nvim

# config

export BROWSER="firefox"

# directories

export REPOS="$HOME/Repos"
export GITUSER="fajkoson"
export GHREPOS="$REPOS/github.com/$GITUSER"
export DOTFILES="$GHREPOS/dotfiles"
export SCRIPTS="$DOTFILES/scripts"

# dotnet
export DOTNET_ROOT="$HOME/dotnet"

# get rid of mail notifications
unset MAILCHECK

# ---------- path configuration -------

PATH="$DOTFILES:${PATH:+${PATH}:}$SCRIPTS:$HOME/.local/bin:$HOME/dotnet"
export PATH
                                       
# -------------- history --------------
export HISTFILE=~/.histfile
export HISTSIZE=25000
export SAVEHIST=25000
export HISTCONTROL=ignorespace
                                       
# -------------- functions ------------
# This function is stolen from rwxrob

clone() {
	local repo="$1" user
	local repo="${repo#https://github.com/}"
	local repo="${repo#git@github.com:}"
	if [[ $repo =~ / ]]; then
		user="${repo%%/*}"
	else
		user="$GITUSER"
		[[ -z "$user" ]] && user="$USER"
	fi
	local name="${repo##*/}"
	local userd="$REPOS/github.com/$user"
	local path="$userd/$name"
	[[ -d "$path" ]] && cd "$path" && return
	mkdir -p "$userd"
	cd "$userd"
	echo gh repo clone "$user/$name" -- --recurse-submodule
	gh repo clone "$user/$name" -- --recurse-submodule
	cd "$name"
} && export -f clone

# promt
eval "$(starship init bash)"

# source .bash_aliases if it exists
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
