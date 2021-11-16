set number

set tabstop=4
set shiftwidth=4
set expandtab

" highlight current line
set cursorline

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin(stdpath('data') . '/plugged')

" code intelisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'w0rp/ale'

" theme
Plug 'NLKNguyen/papercolor-theme'

"" Airline and theme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'mhinz/vim-startify'

" fuzzy finders
Plug 'ctrlpvim/ctrlp.vim'

"" git
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'

"" Docstring generator
Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }

" Initialize plugin system
call plug#end()

colorscheme PaperColor
set background=dark

" Airline
set laststatus=2
" show airline even with one tab
"let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#ale#enabled = 1

"" signify
" update vcs signs in real time
let g:signify_realtime = 1

"" Ale
" is it still needed anlongside CoC?
let g:ale_linters = {'python': ['flake8', 'pylint']}

"" LSP setup - coc
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

"" end of coc config

" remember last position in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" startify header
let g:startify_custom_header = [
    \ '     _   __                    _          ',
    \ '    / | / /___   ____  _   __ (_)____ ___ ',
    \ '   /  |/ // _ \ / __ \| | / // // __ `__ \',
    \ '  / /|  //  __// /_/ /| |/ // // / / / / /',
    \ ' /_/ |_/ \___/ \____/ |___//_//_/ /_/ /_/ ',
    \ '                                          ',
    \ ]
