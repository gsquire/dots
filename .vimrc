" Garrett's vim confinguration file.

set t_Co=256

set background=dark

syntax enable

syntax on

colorscheme mod8

" I think this is the secret to 256 colors in Vim 8. Found on quantum GitHub page.
if has("termguicolors")
    set termguicolors
endif

filetype indent plugin on

execute pathogen#infect()

set nocompatible

set encoding=utf-8

set backspace=2

set tabstop=4

set shiftwidth=4

set expandtab

set smarttab

set autoindent

set nobackup

set showmatch

set si

set hls

set lbr

" set maximum column width.
set colorcolumn=100

" remember where i was in the files i have been editing.
set viminfo='10,\"100,:20,%,n~/.viminfo

function! ResCur()
    if line("'\"") <= line("$")
        normal! g`"
        return 1
    endif
endfunction

augroup resCur
    autocmd!
    autocmd BufWinEnter * call ResCur()
augroup END

" go imports on save.
let g:go_fmt_command="goimports"

" airline.
set laststatus=2

" switch between paste/no paste mode easier.
set pastetoggle=<F2>