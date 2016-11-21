" Make vim more useful {{{
set nocompatible
" }}}

" Syntax highlighting {{{
set t_Co=256
set background=dark
syntax on
colorscheme Tomorrow-Night-Bright
" }}}

execute pathogen#infect()
filetype plugin indent on

map <C-n> :NERDTreeToggle<CR>ss

" Disable Arrow Keys in insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

"Disable Arrow Keys in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

"Basic config
set number
set autoindent
set copyindent
set shiftwidth=2
set laststatus=2
set smartindent
inoremap jk <esc>
set tabstop=2
set laststatus=2

"add parenthesis autocomplete
inoremap ( ()<ESC>ha
inoremap { {}<ESC>ha
inoremap [ []<ESC>ha
inoremap " ""<ESC>ha
inoremap ' ''<ESC>ha

" Remap :W to :w {{{
command! W w
" }}}