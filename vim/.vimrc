set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" My Plugins
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'badwolf'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()            " required

"filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" activates syntax highlighting among other things
syntax on
colorscheme badwolf

set number         " Enable line numbers
set relativenumber " Enable relative number
" set autocompletition of paths
set wildmenu
" set status bar
set laststatus=2
" allows you to deal with multiple unsaved
" buffers simultaneously without resorting
" to misusing tabs
"set hidden

" just hit backspace without this one and
" see for yourself
"set backspace=indent,eol,start
