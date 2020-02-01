set nocompatible
syntax on

set t_Co=256
colorscheme slate

set number
set mouse=
set linebreak
set sessionoptions+=resize

set tabstop=4
set shiftwidth=4
set expandtab

 "folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

filetype off
call plug#begin('~/.vim/plugged')

"" Plugin 'scrooloose/nerdtree'
"" Plugin 'jistr/vim-nerdtree-tabs'
"" Plugin 'Valloric/YouCompleteMe'
" Plug 'scrooloose/syntastic'
" Plug 'ngmy/vim-rubocop'
Plug 'w0rp/ale'

" git pluginy
" Plug 'tpope/vim-fugitive'
" Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-signify'

" airline status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" formating
Plug 'godlygeek/tabular'
" Plugin 'editorconfig/editorconfig-vim'

" Fuzzy finder
Plug 'mileszs/ack.vim'
Plug 'ctrlpvim/ctrlp.vim'


" Airline and theme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Ruby helper
" Plug 'ngmy/vim-rubocop'

" Nice color theme
Plug 'NLKNguyen/papercolor-theme'

" Openscad syntax highlighting 
"Plug 'sirtaj/vim-openscad'

" Initialize plugin system
call plug#end()

" All of your Plugins must be added before the following line
filetype on    " required

" show airline even with one tab
set laststatus=2
let g:airline#extensions#tabline#enabled=1


let g:airline#extensions#ale#enabled = 1

let g:ale_linters = {'cpp': ['clang']}
let g:ale_cpp_clang_options='-std=c++11 -Wall'
let g:ale_python_flake8_options = '--ignore=E501'

" highlight current line
set cursorline

" disable omnicomplete preview window
set completeopt-=preview

set clipboard=unnamed

" update vcs signs in real time
let g:signify_realtime = 1

set makeprg=bundle\ exec\ asciidoctor-revealjs\ %
" set makeprg=asciidoctor-pdf\ %
" set makeprg=clang++\ -Wall\ --std=c++11\ %
