#! /bin/bash

# gets the dirname of this script, resolving all symlinks
# from http://stackoverflow.com/a/246128/3577414
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
    DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
    SOURCE="$(readlink "$SOURCE")"
    [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

alias v='vim -p'
alias c='clear'
alias g='git'
alias l='ls -CF'
alias la='l -a'
alias tr='tree -L'
alias t1='tl 1'
alias t2='tl 2'
alias t3='tl 3'
alias t4='tl 4'
alias t5='tl 5'

export PS1="\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "

# add ruby path to $PATH
export PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

# set up autocompletion for git alias
. ${DIR}/git/git-completion.bash
__git_complete g _git
