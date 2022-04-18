"auto reload config file
if !exists('g:vscode')
  set nocompatible
  " Leader key
  let mapleader=','
  " ======== Python3 programming path ===================
  let g:python3_host_prog = "/usr/local/bin/python3"

  if has('unnamedplus')
    set clipboard=unnamed,unnamedplus
  endif

  " =====================================================
  if empty(glob('~/.plugin/nvim/plug.vim'))
    silent !curl -fLo ~/.plugin/nvim/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall | source $MYVIMRC
  endif

  " =====================================================
  " ==========   Config set     =========================
  " =====================================================
  set number
  set nobackup
  set hidden
  set noswapfile
  set cmdheight=1
  set updatetime=300      " Smaller updatetime for CursorHold & CursorHoldI
  set shortmess+=c        " don't give |ins-completion-menu| messages.
  set signcolumn=yes      " always show signcolumns
  set autoindent
  set smartindent
  set cindent

  set cursorline cursorcolumn

  set encoding=utf-8
  set fileencoding=utf-8
  set backspace=indent,eol,start
  set hlsearch
  set incsearch
  set ignorecase
  set smartcase
  set fileformats=unix,dos,mac
  set showcmd
  set ruler
  set t_Co=256
  set gcr=a:blinkon0
  set scrolloff=3
  set modeline
  set modelines=10
  set title
  set titleold="Terminal"
  set titlestring=%F
  set autoread
  set noerrorbells visualbell t_vb=

  syntax on
  call plug#begin('~/.plugin/nvim/')
  Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': 'yarn install --frozen-lockfile'}
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'mattn/emmet-vim'
  Plug 'tpope/vim-surround'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'junegunn/goyo.vim'
  Plug 'sheerun/vim-polyglot'
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'for': 'go', }
  Plug 'mattn/vim-goimports', {'for': 'go'}
  Plug 'joshdick/onedark.vim'
  Plug 'preservim/nerdtree'
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'preservim/nerdcommenter'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'Yggdroot/indentLine'
  Plug 'voldikss/vim-floaterm'
  Plug 'mileszs/ack.vim'
  Plug 'tpope/vim-sensible'
  Plug 'othree/html5.vim'
  Plug 'mbbill/undotree'
  Plug 'w0rp/ale'
  Plug 'ntpeters/vim-better-whitespace'
  Plug 'jiangmiao/auto-pairs'
  Plug 'ap/vim-css-color'
  Plug 'prettier/vim-prettier', {'do': 'yarn install'}
  Plug 'skywind3000/asyncrun.vim'
  Plug 'sickill/vim-monokai'
  Plug 'dhruvasagar/vim-table-mode'
  Plug 'ferrine/md-img-paste.vim'
  call plug#end()

  filetype plugin on

  " colorscheme monokai

  ""============================== coc config ======================
  inoremap <silent><expr> <TAB>
        \ pumvisible() ? "\<C-n>" :
        \ <SID>check_back_space() ? "\<TAB>" :
        \ coc#refresh()
  inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

  function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
  endfunction

  " Use <c-space> to trigger completion.
  inoremap <silent><expr> <c-space> coc#refresh()

  " Remap keys for gotos
  nmap <silent> gd <Plug>(coc-definition)
  nmap <silent> gy <Plug>(coc-type-definition)
  nmap <silent> gi <Plug>(coc-implementation)
  nmap <silent> gr <Plug>(coc-references)

  " Remap for rename current word
  nmap <leader>rn <Plug>(coc-rename)
  " Remap for format selected region
  vmap <leader>f  <Plug>(coc-format-selected)
  nmap <leader>f  <Plug>(coc-format-selected)
  " Do default action for next item.
  nnoremap <silent> <space>j  :<C-u>CocNext<CR>
  " Do default action for previous item.
  nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
  " ============================= coc config ======================
  "
  " ===============================================================
  nnoremap k gk
  nnoremap j gj
  inoremap $$ <END>
  inoremap <C-F> <RIGHT>

  " List all buffers
  nnoremap <silent> <leader>b       :Buffers<CR>
  nnoremap <silent> <leader><space> :noh<CR>
  " ===============================================================
  nnoremap <silent> <F2> :NERDTreeFind<CR>
  noremap <F3> :NERDTreeToggle<CR>
  nnoremap <leader>t :FloatermToggle<CR>
  nnoremap <leader>F :Files<CR>
  nnoremap <C-g> :Rg<Cr>

  map <silent> <F12> :source ~/.config/nvim/init.vim<CR>
  "" Golang
  " disable vim-go :GoDef short cut (gd)
  " this is handled by LanguageClient [LC]
  let g:go_def_mapping_enabled = 0
  let g:deoplete#enable_at_startup = 1

  " Gitgutter config
  let g:gitgutter_sign_added = '✚'
  let g:gitgutter_sign_modified = '✹'
  let g:gitgutter_sign_removed = '-'
  let g:gitgutter_sign_removed_first_line = '-'
  let g:gitgutter_sign_modified_removed = '-'

  "" Vim aireline
  let g:airline#extensions#tabline#enabled = 0
  let g:airline#extensions#virtualenv#enabled = 1
  let g:airline_powerline_fonts = 1
  let g:airline_theme='deus'
  let g:airline_left_sep='>'
  let g:airline_right_sep='<'
  let g:airline_detect_spell=1
  let g:airline_detect_paste=1
  let g:airline_left_sep = '»'
  let g:airline_left_sep = '▶'
  let g:airline_right_sep = '«'
  let g:airline_right_sep = '◀'

  "" Gundo
  let g:gundo_width = 60
  let g:gundo_preview_height = 40
  let g:gundo_right = 1

  au FileType gitcommit let b:EditorConfig_disable = 1

  "" Ack search engine
  let g:ackprg = 'rg --vimgrep --type-not sql --smart-case'
  let g:ack_autoclose = 1
  let g:ack_use_cword_for_empty_search = 1

  " Don't jump to first match
  cnoreabbrev Ack Ack!
  nnoremap <Leader>/ :Ack!<Space>

  "" FloatermToggle g:floaterm_autoclose
  let g:floaterm_autoclose = 2
  let g:floaterm_wintype = 'floating'
  let g:floaterm_position = 'auto'

  "" Goyo
  let g:goyo_width = 140
  let g:goyo_height = '80%'

  "" TailWhiteSpace
  let g:better_whitespace_ctermcolor='blue'

  "" AutoPairs
  let g:AutoPairsShortcutBackInsert = '<M-b>'
  let g:prettier#config#parser = 'typescript'

  set colorcolumn=120
  highlight ColorColumn ctermbg=red

  " vim-go config
  let g:go_fmt_command = "goimports"
  let g:imports = 1
  let g:goimports_simplify = 1

  " Markdown Table model
  function! s:isAtStartOfLine(mapping)
    let text_before_cursor = getline('.')[0 : col('.')-1]
    let mapping_pattern = '\V' . escape(a:mapping, '\')
    let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
    return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
  endfunction

  inoreabbrev <expr> <bar><bar>
            \ <SID>isAtStartOfLine('\|\|') ?
            \ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'
  inoreabbrev <expr> __
            \ <SID>isAtStartOfLine('__') ?
            \ '<c-o>:silent! TableModeDisable<cr>' : '__'
else
  " nothing here
endif
