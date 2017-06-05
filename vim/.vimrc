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

" activates syntax highlighting 256 colors and scheme
set t_Co=256
syntax on

colorscheme badwolf
" Make the gutters darker than the background.
let g:badwolf_tabline = 2

set number         " Enable line numbers
set relativenumber " Enable relative number
set tabstop=4	   " Set tabs 4 spaces
" set autocompletition of paths
set wildmenu
" set status bar
set laststatus=2

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" allows you to deal with multiple unsaved
" buffers simultaneously without resorting
" to misusing tabs
"set hidden

" just hit backspace without this one and
" see for yourself
"set backspace=indent,eol,start

" Copy and paste from xclip
vmap <F11> :!xclip -f -sel clip<CR>
map <F12> :r !xclip -o -sel clip<CR>

" Press F4 to toggle highlighting on/off and show current value.
:noremap <F4> :set hlsearch! hlsearch?<CR>
set hlsearch

" Use ws to write as sudo
cmap ws w !sudo tee > /dev/null %
