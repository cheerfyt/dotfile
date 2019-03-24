" setting nocp is basic
set nocp
syntax on

set encoding=utf-8

" => set mapleader
let mapleader=" "

" => Setting
set backspace=eol,start,indent
set number numberwidth=1

" => warp ruler magic
set wrap ruler magic so=7
set background=dark
set ffs=unix,dos,mac

" => mouse
set mouse=a
set mousehide

" copy => paste
set clipboard=unnamed
set pastetoggle=<F2>

" status line =>
set laststatus=2
set showcmd showmode
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)

" => search
set showmatch
set ignorecase
set smartcase
set hlsearch
set incsearch

" => indnet
set smartindent
set autoindent
set cindent
set smarttab
set ts=4 sw=4

" => file options"
set fileencoding=utf8
set autoread
set autowrite
set history=500
set nobackup
set noswapfile

" =>
set redraw
