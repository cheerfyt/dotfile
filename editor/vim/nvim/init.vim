"auto reload config file
set nocompatible

autocmd! BufWritePost ~/.config/nvim/init.vim source %

"==============================================================================
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.nvim/plugged')
source ~/.config/nvim/plugins.vim
call plug#end()

"=============================================================================
filetype plugin indent on
"==============================================================================
augroup file_types
    autocmd!
    autocmd BufWritePre * :call s:StripTrailingWhitespaces()
    autocmd BufRead,BufNewFile *.yml  set filetype=yaml
    autocmd BufRead,BufNewFile *.fdoc set filetype=yaml
    autocmd BufRead,BufNewFile *.raml set filetype=yaml
    autocmd BufRead,BufNewFile *.yaml set filetype=yaml
    autocmd BufRead,BufNewFile *.md   set filetype=markdown
    autocmd BufRead,BufNewFile *.txt  set filetype=markdown
    autocmd BufRead,BufNewFile *.js   set filetype=javascript syntax=javascript
    autocmd BufRead,BufNewFile *.ts   set filetype=typescript syntax=typescript
    autocmd BufRead,BufNewFile *.es6  set filetype=javascript syntax=javascript
    autocmd BufRead,BufNewFile *.twig set filetype=htmldjango
    autocmd BufRead,BufNewFile *.rabl set filetype=ruby
    autocmd BufRead,BufNewFile *.jade set filetype=jade
augroup END
"==============================================================================

"==============================================================================
let mapleader=" "
set nu
set showmode
set noswapfile
set nobackup
colorscheme flatcolor
set gcr=a:block-blinkon0
set laststatus=2
set ruler
set nowrap
set autoread
set colorcolumn=80
set completeopt-=preview
set ttyfast
set lazyredraw
set ignorecase
set smartcase
set hlsearch
set incsearch
set spell spelllang=en_us
set dictionary=/usr/share/dict/words
set noequalalways
set showmatch
set backspace=indent,eol,start
set splitbelow

set tabstop=4         " - tabs are at proper location
set expandtab         " - don't use actual tab character (ctrl-v)
set shiftwidth=4      " - indenting is 4 spaces
set autoindent        " - turns it on
set smartindent       " - does the right thing (mostly) in programs
set cindent           " - stricter rules for C programs
set pastetoggle=<F2>  " - toggle paste mode

" set list!
" set listchars=tab:>→,trail:·,eol:┑
" set listchars=tab:≫→
highlight ColorColumn ctermbg=230 guifg=cyan guibg=cyan
"==============================================================================

"==============================================================================
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif,*.pdf
set wildignore+=/bower_components/*,/node_modules/*
set wildignore+=.git/**,vendor/**
" =============================================================================
"                                   Key mapping
" =============================================================================
nnoremap j gj
nnoremap k gk
nnoremap <leader>p :bp<cr>
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
nnoremap H ^
nnoremap L $
inoremap jk <esc>
inoremap <C-e> <END>
nnoremap <F3> :NERDTreeToggle<CR>
nnoremap <F8> :TagbarToggle<CR>
nnoremap <leader>gd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>jd :YcmCompleter GoTo<CR>
inoremap <Tab> <C-x><C-o>
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
vnoremap <Tab> >gv
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j
nnoremap <silent> <leader>s :split<CR>
nnoremap <silent> <leader>v :vsplit<CR>
nnoremap <silent> <leader>q :close<CR>

map <Leader>n <plug>NERDTreeTabsToggle<CR>
" =============================================================================
highlight Cursor guifg=black guibg=pink
highlight ColorColumn ctermbg=130 guifg=yellow guibg=yellow
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
highlight Pmenu term=reverse ctermbg=cyan ctermfg=black
highlight PmenuSel term=reverse ctermbg=lightred ctermfg=black
highlight ExtraWhitespace ctermbg=darkgreen ctermfg=white
hi SpecialKey ctermfg=237 guifg=#535b68
hi MatchParen cterm=underline ctermbg=none ctermfg=Cyan

" ===================== unicode symbols ==============
" setting for airline
" ===================== unicode symbols ==============
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = '▶'
let g:airline#extensions#tabline#left_alt_sep = '▶'
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme              = "onedark"
let g:airline_left_sep           = '▶'
let g:airline_left_alt_sep       = '▶'
let g:airline_right_sep          = ''
let g:airline_right_alt_sep      = ''
let g:ctrlp_custom_ignore = 'node_modules\|.DS_Store\|.git\|vendor'
" let g:airline_symbols.crypt      = ''
" let g:airline_symbols.linenr     = ''
" let g:airline_symbols.maxlinenr  = '☰'
" let g:airline_symbols.branch     = ''
" let g:airline_symbols.paste      = '∥'
" let g:airline_symbols.spell      = 'Ꞩ'
" let g:airline_symbols.notexists  = '∄'
" let g:airline_symbols.whitespace = 'Ξ'
" =============================================================================

"==============================================================================
" remove the space of end the line
"==============================================================================
function! s:StripTrailingWhitespaces()
    let l:l = line(".")
    let l:c = col(".")
    %s/\s\+$//e
    call cursor(l:l, l:c)
endfunction

"==============================================================================
"python with virtualenv support
"==============================================================================
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

"===========================================
" ycm config
"===========================================
let g:ycm_server_python_interpreter = "/usr/local/bin/python3"
let g:ycm_complete_in_comments=1
let g:ycm_collect_identifiers_from_tags_files=1

"==============================================================================
" snippet settings
"==============================================================================
let g:UltiSnipsExpandTrigger="<C-x>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" terminal setting
let g:split_term_default_shell = "bash"
