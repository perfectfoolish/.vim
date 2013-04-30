execute pathogen#infect()
syntax on
filetype plugin indent on

" escape
imap jj <esc>
imap JJ <esc>

" quit
map ,f :q!<CR>

" space
set expandtab
set tabstop=2
set shiftwidth=2
autocmd FileType c setlocal shiftwidth=4 tabstop=4

" vimrc editing
" I need a fake ~/.vimrc: runtime vimrc
" http://www.derekwyatt.org/vim/the-vimrc-file/my-vimrc-file/
map ,e :e ~/.vim/vimrc<CR>
" When vimrc is edited, reload it
" copied from http://amix.dk/vim/vimrc.html
autocmd! bufwritepost vimrc source ~/.vim/vimrc

" EOL whitespace
set list
set listchars=trail:+

" status line

set statusline=%F:\ %l
set laststatus=2

" ack
" sudo apt-get install ack-grep # on ubuntu
" sudo ln -s `which ack-grep` /bin/ack
map ,k :Ack <cword><ENTER>

" ctrlp.vim
let g:ctrlp_map = ',,'
let g:ctrlp_open_multiple_files = 'v'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git)$',
  \ 'file': '\v\.(log|jpg|png|jpeg)$',
  \}
