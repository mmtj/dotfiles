set lines=30
set columns=90
set guifont=DeJaVu\ Sans\ Mono\ 11

colorscheme autumnleaf

" always show gutter column; prevent vim from 'moving' column
let g:gitgutter_sign_column_always = 1
" custom vim-gitgutter colors
let g:gitgutter_override_sign_column_highlight = 0
highlight clean SignColumn

highlight GitGutterAdd guibg=#00ff00 guifg=#00ff00
highlight GitGutterDelete guibg=#ff0000 guifg=#ff0000
highlight GitGutterChange guibg=#ff8c00 guifg=#ff8c00

" hide menu and toolbar
set guioptions-=m
set guioptions-=T
