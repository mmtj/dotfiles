set nocompatible

set t_Co=256
colorscheme slate

set number
set mouse=
set linebreak
set sessionoptions+=resize

set tabstop=4
set shiftwidth=4
set expandtab

set foldmethod=indent   
set foldnestmax=10      
set nofoldenable        
set foldlevel=0

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugin 'scrooloose/nerdtree'
" Plugin 'jistr/vim-nerdtree-tabs'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'

" git pluginy
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" airline status bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" formating
Plugin 'godlygeek/tabular'
Plugin 'editorconfig/editorconfig-vim'

" filesearch
Plugin 'mileszs/ack.vim'
Plugin 'kien/ctrlp.vim.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Highlight gentoo ebuilds
au BufRead, BufNewFile *.ebuild set filetype=ebuild

"" C/C++ Make settings
" pthread make (clang++)
" set makeprg=clang++\ -Wall\ -pedantic\ -ggdb\ -lpthread\ -O0\ -o\ %<\ %

" pthread make (g++)
"set makeprg=g++\ -Wall\ -pedantic\ -ggdb\ -lpthread\ -O0\ -o\ %<\ %

" C/C++ code snippets
let @h = '€khI#ifndef €krv$yo#define po#endif /* pa */€ku€kui'
let @n = 'i#include <stdio.h>inr €kb€kbt main (void){	return (0);}€ku€ku	aq€kb'
let @i = 'i	for (int i = %€kb€KC; i < n; i++ú€kb) {}€ku		'
let @j = '@i@i€ku€kr€kr€kr€kr€kr€kr€kr€kr€kr€kr€kDij€kr€kr€kr€kr€kr€kr€kDj€kr€kr€kr€kr€kr€kr€kDj€kd	' 

"" NerdTree settings
" don't start NERDTree by default
" let g:nerdtree_tabs_open_on_gui_startup=0
" 
" let NERDTreeQuitOnOpen = 1
" 
" autocmd vimenter * if !argc() | NERDTree | endif

" show airline even with one tab
set laststatus=2

"" always show gutter column; prevent vim from 'moving' column
"let g:gitgutter_sign_column_always = 1
"" custom vim-gitgutter colors
"let g:gitgutter_override_sign_column_highlight = 0
"
"highlight clean SignColumn

"highlight GitGutterAdd ctermbg=#00ff00 ctermfg=#00ff00
"highlight GitGutterDelete ctermbg=#ff0000 ctermfg=#ff0000
"highlight GitGutterChange ctermbg=#ff8c00 ctermfg=#ff8c00

" update time for gitgutter
set updatetime=250

" set list listchars=tab:>-,nbsp:.,trail:.,extends:>,precedes:<
" let &showbreak = '^'
