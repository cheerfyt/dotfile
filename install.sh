#!/bin/bash

BASE=$(pwd)
VIMBASE="${BASE}"/vim
TMUXCONF="${BASE}"/tmux/tmux.conf
VIMRC=${VIMBASE}/vimrc
DISTVIMRC=$HOME/.vimrc

clean() {
  rm -f $HOME/.vimrc $HOME/.zshrc $HOME/.gitconfig $HOME/.tmux.conf $HOME/.bash_aliases $HOME/.oh-my-zsh/themes/node.zsh-theme
}

install_vim() {
	echo "install vim start ..."
	ln -sf ${VIMRC} ${DISTVIMRC}
	mkdir -p ${HOME}/.vim/
	ln -sf "${VIMBASE}"/colors "${HOME}"/.vim/colors
	echo "vim install done"
}

install_tmux() {
	echo "install tmux"
  if [[ $(command -v tmux) == "" ]];then
    echo TMUX not installed, install for you now
    brew install tmux
  else
    echo TMUX had be installed
  fi
	ln -sf ${TMUXCONF} ${HOME}/.tmux.conf
  ln -sf ${BASE}/shell/zshrc $HOME/.zshrc
  ln -sf ${BASE}/shell/bash_aliases $HOME/.bash_aliases
  ln -sf ${BASE}/node.zsh-theme $HOME/.oh-my-zsh/themes/
	echo "installed tmux config done"
}

install_git() {
	echo "Install git config"
	ln -sf ${BASE}/git/gitconfig ${HOME}/.gitconfig
	echo "installed git config done"
}


main() {
  clean
	install_vim
	install_git
	install_tmux
}

main
