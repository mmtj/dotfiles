set nocompatible
syntax on

set t_Co=256
colorscheme slate

set number
set mouse=
set linebreak

set tabstop=4
set shiftwidth=4
set expandtab

 "folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

filetype off
" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'
"Plugin 'editorconfig/editorconfig-vim'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'scrooloose/nerdtree'

"" Linters
"Plugin 'vim-syntastic/syntastic'
" Asyncronous linter
Plug 'w0rp/ale'

" Fuzzy file finder
Plug 'ctrlpvim/ctrlp.vim'

" Git state visualization
Plug 'airblade/vim-gitgutter'

" Airline and theme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Ruby helper
Plug 'ngmy/vim-rubocop'

" Nice color theme
Plug 'NLKNguyen/papercolor-theme'

" Openscad syntax highlighting 
"Plug 'sirtaj/vim-openscad'
Plug 'sheerun/vim-polyglot'

" Initialize plugin system
call plug#end()

" All of your Plugins must be added before the following line
" call vundle#end()            " required
" filetype on    " required

" show airline even with one tab
set laststatus=2
let g:airline#extensions#tabline#enabled=1

let syntastic_python_checkers=['flake8']
let g:syntastic_python_flake8_args='--ignore=E501,E225,E211'

let g:ale_linters = { 'cpp': ['clang'] }
let g:ale_cpp_clang_options='-std=c++11 -Wall'
let g:airline#extensions#ale#enabled = 1

" set makeprg=bundle\ exec\ asciidoctor-revealjs\ %
set makeprg=clang++\ -Wall\ -std=c++11\ %
