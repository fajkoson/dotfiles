# aliases
alias v=nvim
alias ..="cd .."
alias sc='cd $SCRIPTS'
alias dot='cd $GHREPOS/dotfiles'
alias c="clear"

alias ls='ls --color=auto'
alias ll='ls -la'
alias la='ls -lathr'

# finds all files recursively and sorts by last modification, ignore hidden files
alias lastmod='find . -type f -not -path "*/\.*" -exec ls -lrt {} +'

alias t='tmux'
alias e='exit'

# dotnet
alias dr='dotnet run'

# git
alias gp='git pull'
alias gs='git status'
alias lg='lazygit'

# ricing
alias eb='v ~/.bashrc'

# terraform
alias tf='terraform'
alias tp='terraform plan'

# use fp to do a fzf search and preview the files
alias fp="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"
# search for a file with fzf and open it in vim
alias vf='v $(fp)'