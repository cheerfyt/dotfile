" my keymappings
" => delete line quickly
nnoremap - dd
"============================= Move betwwed window =============================
nnoremap <leader>r :source $MYVIMRC<Esc>
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
" => esc
inoremap jj <Esc>
" => mapleader
nnoremap <leader>s :w<Esc>
nnoremap <leader>q :q<cr>
" object model
onoremap ( i(
onoremap [ i[
onoremap { i{
"===============================================================================
nnoremap <Leader>l :set list! listchars=tab:»·,trail:·<ESC>
