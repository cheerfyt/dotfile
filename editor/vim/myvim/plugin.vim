" vim: foldmarker={,} foldlevel=1 foldmethod=marker
"
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"   https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

" Plugins {
call plug#begin('~/.vim/plugged')
    " autocomplete plugin, subdir completion is i need {
        Plug 'jiangmiao/auto-pairs'
        Plug 'ervandew/supertab'
        Plug 'Shougo/neocomplete.vim'
        Plug 'vim-scripts/AutoComplPop'
		Plug 'valloric/youcompleteme', {'do': './install.py --clang-completer --go-completer --rust-completer --java-completer'}
    " }

    " search plugins {
        Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
        Plug 'junegunn/fzf.vim'
    " }

	" short cut{
        Plug 'tpope/vim-eunuch'
        Plug 'tpope/vim-surround'
        Plug 'terryma/vim-multiple-cursors'
        Plug 'editorconfig/editorconfig-vim'
	" }

    " copy from internet {
        Plug 'scrooloose/nerdtree'
        Plug 'w0rp/ale'
    " }

    " git plugins {
        Plug 'tpope/vim-fugitive'
        Plug 'airblade/vim-gitgutter'
    " }

	" typescript and javascript {
        Plug 'mattn/emmet-vim'
	" }

	" schema color {
	    Plug 'morhetz/gruvbox'
		Plug 'bling/vim-airline'
		Plug 'vim-airline/vim-airline-themes'
	" }

	" Nginx {
	    Plug 'vim-scripts/nginx.vim'
	" }

	" Lang {
	    "=> rust {
            Plug 'rust-lang/rust.vim', {'for': 'rust'}
	    	Plug 'phildawes/racer'
	    "}

	    "=> typescript {
	        Plug 'Quramy/tsuquyomi', {'for': 'typescript'}
	    	Plug 'leafgarland/typescript-vim', {'for': 'typescript'}
	    	Plug 'mxw/vim-jsx', {'for': 'jsx'}
	    	Plug 'pangloss/vim-javascript', {'for': 'javascript'}
	    "}

	    "=> golang {
	    	Plug 'fatih/vim-go', {'do': 'GoInstallBinaries'}
	    	Plug 'nsf/gocode', {'do': 'go build'}
	    "}

	    "=> python  {
	    	Plug 'klen/python-mode'
	    "}

	    "=> Markdown {
	        Plug 'plasticboy/vim-markdown'
	    "}
    "}
	"
	"prettier {
	    Plug 'prettier/vim-prettier', {'do': 'yarn install', 'for': ['javascript', 'typescript', 'jsx', 'tsx', 'json']}
	"}

call plug#end()
" }

" superTab default setting
let g:SuperTabDefaultCompletionType = "<c-n>"


" emmet-config
let g:user_emmet_mode='inv'
let g:user_emmet_install_global = 0

" only for front-end
autocmd FileType html,css,javascript,tsx,jsx EmmetInstall

" airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = '⇰'
let g:airline#extensions#tabline#left_alt_sep = '‖'
let g:airline_powerline_fonts=1
let g:airline_theme = 'violet'
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

function! AccentDemo()
  let keys = ['a','b','c','d','e','f','g','h']
  for k in keys
    call airline#parts#define_text(k, k)
  endfor
  call airline#parts#define_accent('a', 'red')
  call airline#parts#define_accent('b', 'green')
  call airline#parts#define_accent('c', 'blue')
  call airline#parts#define_accent('d', 'yellow')
  call airline#parts#define_accent('e', 'orange')
  call airline#parts#define_accent('f', 'purple')
  call airline#parts#define_accent('g', 'bold')
  call airline#parts#define_accent('h', 'italic')
  let g:airline_section_a = airline#section#create(keys)
endfunction
autocmd VimEnter * call AccentDemo()

" ale settings
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_fixers = {
            \ '*': ['remove_trailing_lines', 'trim_whitespace'],
            \ 'javascript': ['prettier'],
            \ 'typescript': ['prettier'],
            \}

let g:ale_fix_on_save = 1
let g:ale_sign_error = 'E'
let g:ale_sign_warning = 'W'
highlight clear ALEErrorSign
highlight clear ALEWarningSign
