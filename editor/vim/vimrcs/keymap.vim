"" my keymappings

" => delete line quickly
nnoremap - dd

" => source the change file
nnoremap <leader>r :source $MYVIMRC<Esc>

" => esc"
inoremap jk <Esc>
inoremap <Esc> <Nop>

" => mapleader
nnoremap <leader>b :echo "hello, world"<Esc>
nnoremap <leader>w :w<Esc>

" object model
onoremap ( i(
onoremap [ i[
onoremap { i{
