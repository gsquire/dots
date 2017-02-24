#!/bin/bash

# A simple script to reinstall my vim plugins.

git clone --depth=1 https://github.com/fatih/vim-go $HOME/.vim/bundle/vim-go

git clone --depth=1 https://github.com/rust-lang/rust.vim.git $HOME/.vim/bundle/rust.vim

git clone --depth=1 https://github.com/vim-airline/vim-airline $HOME/.vim/bundle/vim-airline

git clone --depth=1 https://github.com/vim-syntastic/syntastic.git $HOME/.vim/bundle/syntastic

git clone --depth=1 https://github.com/chriskempson/base16-vim.git $HOME/.vim/bundle/base16-vim
