set nocompatible              " be iMproved, required
filetype off                  " required

"----------------------------------------
"------------- PLUG INS -----------------
"----------------------------------------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"Plugin 'VundleVim/Vundle.vim'
Plugin 'VundleVim/Vundle'
" My Plugins
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'badwolf'
Plugin 'Valloric/YouCompleteMe'
Plugin 'https://github.com/fholgado/minibufexpl.vim.git'
call vundle#end() 

" To ignore plugin indent changes, instead use:
filetype plugin indent on
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" see :h vundle for more details or wiki for FAQ


"----------------------------------------
"-------------- DISPLAY -----------------
"----------------------------------------

" numbers, scheme, syntax
set number         " Enable line numbers
set relativenumber " Enable relative number
set tabstop=4	   " Set tabs 4 spaces
set t_Co=256 
syntax on
colorscheme badwolf
let g:badwolf_darkgutter = 1 " Make the gutters darker than the background.
let g:badwolf_tabline = 3

" statusbar (bottom) and buffer status bar (top)
"set status bar
set laststatus=2
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" General usage options: folding
"Folding
set foldmethod=indent
"set foldnestmax=10
"set foldlevelstart=1


"----------------------------------------
"------------- MAPPINGS -----------------
"----------------------------------------

" set <leader> to ,
let mapleader = ","

" Press F4 to toggle highlighting on/off and show current value.
:noremap <F4> :set hlsearch! hlsearch?<CR>
set hlsearch
" Copy and paste from xclip
vmap <F11> :!xclip -f -sel clip<CR>
map <F12> :r !xclip -o -sel clip<CR>

" Fast save a buffer
nmap <leader>w :w!<cr>

" Close current buffer
map <leader>bd :Bclose<cr>

" Use ws to write as sudo
cmap ws w !sudo tee > /dev/null %

"Visual mode pressing * or # searches for the current selection:
"vnoremap <silent> * :call VisualSelection('f')<CR>
"vnoremap <silent> # :call VisualSelection('b')<CR>
"Visual mode pressing // will search and then n for foward
vnoremap // y/<C-R>"<CR>

"Move between splits with vimlike keys Ctrl + hjkl
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"----------------------------------------
"------------- OPTIONS ------------------
"----------------------------------------

" set autocompletition of paths
set wildmenu
"
" allows you to deal with multiple unsaved
" buffers simultaneously without resorting to misusing tabs
set hidden
set confirm

" dont save backups
set nobackup
" just hit backspace without this one and
" see for yourself
"set backspace=indent,eol,start
