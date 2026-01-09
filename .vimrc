" Garrett's vim confinguration file.

set t_Co=256

set background=dark

syntax enable

syntax on

" I think this is the secret to 256 colors in Vim 8. Found on quantum GitHub page.
if has("termguicolors")
    set termguicolors
endif

filetype indent plugin on

" Old pathogen starting point.
call plug#begin()

Plug 'rust-lang/rust.vim'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'vim-airline/vim-airline'

Plug 'ziglang/zig.vim'

Plug 'dense-analysis/ale'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Color schemes below here.
Plug 'morhetz/gruvbox'

Plug 'sainnhe/everforest'

" https://gregjs.com/vim/2016/configuring-the-deoplete-asynchronous-keyword-completion-plugin-with-tern-for-vim/
call plug#end()

colorscheme everforest

set nocompatible

set rnu

" The following three configurations are for faster switching.
set ttyfast

set lazyredraw

set cursorline

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

" Set my leader key to be space.
let mapleader = " "

set spell
set spelllang=en_us

" Don't always ask to save a buffer when editing multiple files.
set hidden

set noswapfile

" fzf.vim Buffers command via leader b.
nnoremap <silent> <leader>b :Buffers<CR>

" fzf.vim Rg command via leader r.
nnoremap <silent> <leader>r :Rg<CR>

" set maximum column width.
set colorcolumn=100

" Do not adjust the current newline style.
set nofixendofline

" remember where i was in the files i have been editing.
" Edited 06/12/2025 so neovim doesn't overwrite.
if !has('nvim')
    set viminfo='10,\"100,:20,%,n~/.viminfo
endif

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
" Not supported in neovim. 06/12/2025
" set pastetoggle=<F2>

" rust format on save.
let g:rustfmt_autosave=1

" Rust analyzer.
let g:ale_linters = {'rust': ['analyzer']}
