" My vimrc!

set number
set relativenumber

set nocompatible
filetype plugin on
filetype plugin indent on
syntax on

set tabstop=4
set shiftwidth=4
set expandtab
set wrap
set linebreak
set nolist


call plug#begin('~/.vim/plugged')
Plug 'https://github.com/digitaltoad/vim-pug.git'
Plug 'https://github.com/vim-airline/vim-airline.git'
call plug#end()

map <Esc><Esc> :w<CR>
map :rc :e<Space>~/.vimrc

autocmd FileType pug setlocal ts=2 sts=2 sw=2
autocmd FileType pug inoremap ;tick #[span.tick ✓]
autocmd FileType pug inoremap ++  + 
autocmd FileType pug inoremap --  ‒ 
autocmd FileType pug inoremap **  × 
autocmd FileType pug inoremap ///  ÷ 
autocmd FileType pug inoremap ==  = 
autocmd FileType pug inoremap ... … 
autocmd FileType pug inoremap 1/2 ½ 
autocmd FileType pug inoremap ~~ <C-k>NS
autocmd FileType pug inoremap ;q <var></var><Esc>5hi
autocmd FileType pug inoremap ;x \(\mathsf{\frac}\)<Esc>F}i
autocmd FileType pug inoremap ;vel  m s⁻¹
autocmd FileType pug inoremap ;acc  m s⁻²
autocmd FileType pug inoremap ;ans details<ESC>o<TAB>summary # marks<ESC>osection.answer<ESC>
