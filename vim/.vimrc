
"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/bill/.cache/dein//repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/bill/.cache/dein/')
  call dein#begin('/home/bill/.cache/dein/')

  " Let dein manage dein
  " Required:
  call dein#add('/home/bill/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')

  " You can specify revision/branch/tag.
  "call dein#add('Shougo/vimshell', { 'rev': '3787e5' })
  call dein#add('scrooloose/nerdtree')
  call dein#add('ctrlpvim/ctrlp.vim')
  call dein#add('altercation/vim-colors-solarized')
  call dein#add('keith/parsec.vim')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif


"End dein Scripts-------------------------

set expandtab
set shiftwidth=2
set softtabstop=2

set relativenumber
set number

let g:solarized_termcolors=256
set t_Co=256 
set background=dark
colorscheme solarized

" Open NERDTree automatically when no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Bind NERDTree to C-n
nmap <Leader>n :NERDTreeToggle<CR>
let NERDTreeShowHidden=1 " Show hidden files

" Bind CtrlP to C-p
map <Leader>p :CtrlPMixed<CR>
let g:ctrlp_dont_split = 'NERD'

