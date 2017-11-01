set nocompatible              " be iMproved, required
filetype off                  " required

"----------------------------------------
"------------- PLUG INS -----------------
"----------------------------------------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" My Plugins
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'badwolf'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tomlion/vim-solidity'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
call vundle#end() 

" To ignore plugin indent changes, instead use:
filetype plugin indent on

"----------------------------------------
"-------------- DISPLAY -----------------
"----------------------------------------
" set <leader> to ,
let mapleader = ","

" numbers, scheme, syntax
set number         " Enable line numbers
set relativenumber " Enable relative number
set tabstop=4	   " Set tabs 4 spaces
set softtabstop=0 noexpandtab
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab " Fixes new line to 4 spaces

set t_Co=256  "Color 256 :)
syntax on
colorscheme badwolf     "New nice comming up!
let g:badwolf_darkgutter = 1 " Make the gutters darker than the background.
let g:badwolf_tabline = 3

" statusbar (bottom) and buffer status bar (top)
"set status bar
set laststatus=2
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

let g:airline#extensions#syntastic#enabled = 1

" General usage options: folding
"Folding
set foldmethod=indent
"set foldnestmax=10
"set foldlevelstart=1

"----------------------------------------
"------------- PLUGGINS -----------------
"----------------------------------------

"------------- SYNTASTIC ----------------
"Please read the documentation for this
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"let g:syntastic_c_checkers=['make','splint']
let g:syntastic_solidity_checkers=['solidity','solc','Solhint','Soluim']

"let g:syntastic_filetype_checkers['solidity'] = ['solidity'] " will use python as checker

"------------- NERDTree -----------------
nmap <leader>o :NERDTreeToggle<CR>

" Starts NERDTree if no file was selevtionated
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Close vim if NERDTree is the onlything open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Delete the buffer of a deleted file
let NERDTreeAutoDeleteBuffer = 1

" Prettier no ? for help
let NERDTreeMinimalUI = 1


"----------------------------------------
"------------- MAPPINGS EXTRA -----------
"----------------------------------------


" Press F4 to toggle highlighting on/off and show current value.
:noremap <F4> :set hlsearch! hlsearch?<CR>
set hlsearch
" Copy and paste from xclip
vmap <F11> :!xclip -f -sel clip<CR>
map <F12> :r !xclip -o -sel clip<CR>

nmap <leader>w :w!<cr>
nmap <leader>q :q!<cr>
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
"
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
