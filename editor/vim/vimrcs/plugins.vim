" =============================================================================
" init plug.vim
" download vim to ~/.vim/autoload/plug.vim
" =============================================================================
if empty(glob("~/.vim/autoload/plug.vim"))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" plugin install
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdcommenter'
Plug 'w0rp/ale'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-repeat'
Plug 'fatih/vim-go'
Plug 'ervandew/supertab'
Plug 'junegunn/fzf'
Plug 'easymotion/vim-easymotion'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'plasticboy/vim-markdown'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'sjl/gundo.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'leafgarland/typescript-vim'
Plug 'shougo/deoplete.nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'ryanoasis/vim-devicons'
Plug 'edkolev/tmuxline.vim'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'myusuf3/numbers.vim'
Plug 'junegunn/vim-github-dashboard', { 'on': ['GHDashboard', 'GHActivity'] }
Plug 'junegunn/goyo.vim', { 'for': 'markdown' }
call plug#end()

" superTab default setting
let g:SuperTabDefaultCompletionType = "<c-n>"


" emmet-config
let g:user_emmet_mode="inv"
let g:user_emmet_install_global = 0

" only for front-end
autocmd FileType html,css,javascript,tsx,jsx EmmetInstall

" airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = "⇰"
let g:airline#extensions#tabline#left_alt_sep = "‖"
let g:airline_powerline_fonts=1
let g:airline_theme = "violet"
if !exists("g:airline_symbols")
	let g:airline_symbols = {}
endif

function! AccentDemo()
  let keys = ["a","b","c","d","e","f","g","h"]
  for k in keys
    call airline#parts#define_text(k, k)
  endfor
  call airline#parts#define_accent("a", "red")
  call airline#parts#define_accent("b", "green")
  call airline#parts#define_accent("c", "blue")
  call airline#parts#define_accent("d", "yellow")
  call airline#parts#define_accent("e", "orange")
  call airline#parts#define_accent("f", "purple")
  call airline#parts#define_accent("g", "bold")
  call airline#parts#define_accent("h", "italic")
  let g:airline_section_a = airline#section#create(keys)
endfunction
autocmd VimEnter * call AccentDemo()

" ale settings
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_fixers = {
            \ "*": ["remove_trailing_lines", "trim_whitespace"],
            \ "javascript": ["prettier"],
            \ "typescript": ["prettier"],
            \ }

let g:ale_fix_on_save = 1
let g:ale_sign_error = "E"
let g:ale_sign_warning = "W"
highlight clear ALEErrorSign
highlight clear ALEWarningSign

" ==============================================================
" minibufexplor
" ==============================================================
hi MBENormal               guifg=#808080 guibg=fg
hi MBEChanged              guifg=#CD5907 guibg=fg
hi MBEVisibleNormal        guifg=#5DC2D6 guibg=fg
hi MBEVisibleChanged       guifg=#F1266F guibg=fg
hi MBEVisibleActiveNormal  guifg=#A6DB29 guibg=fg
hi MBEVisibleActiveChanged guifg=#F1266F guibg=fg
let g:miniBufExplorerAutoStart = 1
let g:miniBufExplBuffersNeeded = 1
