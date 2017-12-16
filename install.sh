#!/bin/bash

BASE=$(pwd)
VIMBASE="${BASE}"/editor/vim
TMUXCONF="${BASE}"/shell/tmux/tmux.conf
VIMRC=${VIMBASE}/editor/vim/
DISTVIMRC=$HOME/.vimrc

clean() {
  rm -f $HOME/.vimrc $HOME/.zshrc $HOME/.gitconfig $HOME/.tmux.conf $HOME/.bash_aliases $HOME/.oh-my-zsh/themes/node.zsh-theme
}

install_vim() {
  echo "install vim start ..."
  ln -sf ${VIMBASE}/vimrc ${DISTVIMRC}
  mkdir -p ${HOME}/.vim/
  ln -sf ${VIMBASE}/colors ${HOME}/.vim/colors
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
  echo "installed tmux config done"
}

install_git() {
  echo "Install git config"
  ln -sf ${BASE}/git/gitconfig ${HOME}/.gitconfig
  echo "installed git config done"
}

install_zsh() {
  echo 'Install zsh config'
  ln -sf $BASE/shell/zsh/zshrc $HOME/.zshrc
  ln -sf $BASE/shell/zsh/themes $HOME/.oh-my-zsh/custom/
}


main() {
  clean
  install_vim
  install_git
  install_tmux
  install_zsh
}

main
