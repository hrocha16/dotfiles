"Make vim more useful {{{
set nocompatible
" }}}

" Syntax highlighting {{{
set t_Co=256
set background=dark
syntax on
" colorscheme 0x7A69_dark
colorscheme Tomorrow-Night-bright
" }}}

execute pathogen#infect()
filetype plugin indent on

nmap <C-n> :NERDTreeToggle<CR>

"Basic config
set autoindent
set backspace=indent,eol,start
set softtabstop=2
set nu
set shiftwidth=2
set noerrorbells
set laststatus=0
inoremap jk <esc>
set tabstop=4
set mouse=a
set ttyfast
set ttymouse=xterm

" Remap :W to :w {{{
command! W w
" }}}

au BufNewFile,BufRead *.py:
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

" Configuration
" FastEscape {{{
if ! has('gui_running')
  set ttimeoutlen=10
  augroup FastEscape
	autocmd!
	au InsertEnter * set timeoutlen=0
	au InsertLeave * set timeoutlen=1000
  augroup END
endif
" }}}
