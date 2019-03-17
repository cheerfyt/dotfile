" vim: foldmarker={,} foldlevel=2 foldmethod=marker


set fileencoding=utf-8
set nocompatible
syntax on

let mapleader = ","

" Configure backspace so it acts as it should act
" all settings {
set backspace=eol,start,indent
set number
set wrap
set ruler
set so=7
set magic
set background=dark
set ffs=unix,dos,mac
set mouse=a
set mousehide
set clipboard=unnamed
set pastetoggle=<F12>
set showcmd
set ruler
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
set history=500
set nobackup
set noswapfile
set autoindent
set smartindent
set cindent
set showmode
set statusline=2
set laststatus=2
set showmatch
set ignorecase
set smartcase
set hlsearch
set incsearch
set ts=4 sw=4
set smarttab
set autoread
set redraw
set encoding=utf-8
" }

set colorcolumn=80
colorscheme atom-dark-256

augroup foldgroup
  autocmd!
  autocmd FileType javascript,typescript set foldmethod=syntax expandtab
  autocmd FileType vim,go set foldmethod=marker
  autocmd FileType python set foldmethod=indent
augroup END

" dont't show preview windows {
set completeopt-=preview
" }


" enable filetype detectionand indent detection (based on filetype)
filetype plugin indent on

" :W sudo saves the file
command! W w !sudo tee % > /dev/null

if has("gui_running")
	set guifont=Menlo\ Bold:h13
endif
