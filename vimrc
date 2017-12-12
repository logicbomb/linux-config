call pathogen#infect()
call pathogen#helptags()

" Basic config {{{
set nu
set tabstop=2
set softtabstop=2
set expandtab " the above 3 converts tabs to spaces
set cursorline
set wildmenu
set showmatch
syntax enable 
if (has("termguicolors"))
 set termguicolors
endif
colo tender 
"
" }}}

" Key mappings {{{

" Leader & Escape {{{
let mapleader = "\<space>"
:inoremap <esc> <nop>
:inoremap jk <esc>
:inoremap kj <esc>
:noremap <leader>jk <esc>
:noremap <leader>kj <esc>
" }}}

" Navigation {{{
:noremap <leader>j <C-w>j
:noremap <leader>k <C-w>k
:nnoremap B ^
:nnoremap ^ <nop>
:nnoremap E $
:nnoremap $ <nop>
" }}}
" }}}

" Buffer mgmt {{{
:noremap <leader>w :w<cr>
:noremap <leader>x :x<cr>
:nnoremap <leader>l :bn<cr>
:nnoremap <leader>h :bp<cr>
:nnoremap <leader>ls :ls<cr>
:nnoremap <leader>sp :sp<cr>
:nnoremap <leader>vsp :vsp<cr>
" }}}

" Edit .vimrc {{{
:nnoremap <leader>ev :vsp $MYVIMRC<cr>
:nnoremap <leader>sv :w<cr>:source $MYVIMRC<cr>
" }}}

" Folding {{{
set foldenable
set foldlevelstart=5
set foldnestmax=100 
set foldmethod=indent
nnoremap <leader>f za
" }}}

" Plugins {{{
" CtrlP {{{
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
" }}}

" Syntastic {{{
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" }}}

" Vim Airline {{{
let g:airline_theme='tender'
" }}}
" }}}

" Backup {{{
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
" }}}

" .vimrc fold settings {{{
set foldenable
set foldmethod=marker
set foldlevel=0
set modelines=1
" vim:foldmethod=marker:folderlevel=0
" }}}

