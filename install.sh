#!/bin/bash

BASE=$(pwd)
VIMBASE="${BASE}"/vim
TMUXCONF="${BASE}"/tmux/tmux.conf
VIMRC=${VIMBASE}/vimrc
DISTVIMRC=$HOME/.vimrc

install_vim() {
	echo "install vim start ..."
	ln -sf "${VIMRC}" "${DISTVIMRC}"
	mkdir -p "${HOME}"/.vim/
	ln -sf "${VIMBASE}"/colors "${HOME}"/.vim/colors
	echo "vim install done"
}

install_tmux() {
	echo "install tmux"
	brew update && brew install tmux
	ln -sf "${TMUXCONF}" "${HOME}"/.tmux.conf
	echo "installed tmux config done"
}

install_git() {
	echo "Install git config"
	ln -sf ${BASE}/git/gitconfig ${HOME}/.gitconfig
	echo "installed git config done"
}

main() {
	install_vim
	install_git
	install_tmux
}

main
