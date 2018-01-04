set nocompatible              " be iMproved, required
filetype off                  " required

"----------------------------------------
"------------- PLUG INS -----------------
"----------------------------------------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" --Interface -- " 
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'badwolf'
Plugin 'hhff/SpacegrayEighties.vim'
Plugin 'chase/focuspoint-vim'
Plugin 'ajh17/spacegray.vim'
" -- Tools -- "
Plugin 'junegunn/vim-easy-align'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tomlion/vim-solidity'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'ryanoasis/vim-devicons'
call vundle#end() 
" To ignore plugin indent changes, instead use:
filetype plugin indent on

" "----------------------------------------
" "-------------- DISPLAY -----------------
" "----------------------------------------

" set <leader> to ,
let mapleader = ","

set encoding=utf8
set guifont=DroidSansMono\ Nerd\ Font\ 11

" numbers, scheme, syntax
set number         " Enable line numbers
set relativenumber " Enable relative number
set tabstop=4	   " Set tabs 4 spaces
set softtabstop=0 noexpandtab
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab " Fixes new line to 4 spaces

"Folding
set foldmethod=manual
" Save folds in buffer
"au BufWinLeave * mkview
"au BufWinEnter * silent loadview

" Colorscheme
set t_Co=256  "Color 256 :)
let base16colorspace=256  " Access colors present in 256 colorspace
syntax on
colorscheme spacegray     "New rice comming up!
let g:spacegray_underline_search = 1
let g:spacegray_italicize_comments = 1
"let g:badwolf_darkgutter = 1 " Make the gutters darker than the background.
"let g:badwolf_tabline = 3

"set status bar on bottom
set laststatus=2 

" Airline
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts = 1
let g:airline_highlighting_cache = 0

let g:airline#extensions#tabline#enabled = 1 "Buffer list on top
let g:airline#extensions#tabline#fnamemod = ':t' " Show just the filename
let g:airline#extensions#syntastic#enabled = 1

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
let NERDTreeMinimalUI = 1
" 
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''

"------------- EasyAlign -----------------
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"----------------------------------------
"------------- MAPPINGS EXTRA -----------
"----------------------------------------

" Press F4 to toggle highlighting on/off and show current value.
:noremap <F4> :set hlsearch! hlsearch?<CR>
set hlsearch

"indent all file `mzgg=G'z`
vmap <F7> mzgg=G`z<CR>

" Copy and paste from xclip
vmap <F11> :!xclip -f -sel clip<CR>
map <F12> :r !xclip -o -sel clip<CR>
nmap <leader>w :w!<cr>
nmap <leader>q :q!<cr>
map <leader>bd :Bclose<cr> 

" Use ws to write as sudo
cmap ws w !sudo tee > /dev/null %

"Visual mode pressing * or # searches for the current selection:
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>
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

" allows you to deal with multiple unsaved
" buffers simultaneously without resorting to misusing tabs
set hidden
set confirm
" dont save backups
set nobackup
" just hit backspace without this one and
" see for yourself
"set backspace=indent,eol,start
