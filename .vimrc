set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')


" Plugins
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" code completion
Plugin 'ycm-core/YouCompleteMe'

" git
Plugin 'tpope/vim-fugitive'

" status bar at the bottom
Plugin 'vim-airline/vim-airline'

" smooth scrolling
Plugin 'psliwka/vim-smoothie'

" line numbers
" Bundle "myusuf3/numbers.vim"

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"

" highlighting
syntax on

" line numbers
set number

" clangd recommendations
" Let clangd fully control code completion
let g:ycm_clangd_uses_ycmd_caching = 0
" Use installed clangd, not YCM-bundled clangd which doesn't get updates.
let g:ycm_clangd_binary_path = exepath("clangd")

" inlay hints (render param help etc.)
let g:ycm_enable_inlay_hints = 1 

" allow backspace over everything in Insert mode
:set backspace=indent,eol,start

" powerline font
let g:airline_powerline_fonts = 1
