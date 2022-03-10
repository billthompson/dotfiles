" remap normal mode
" :nnoremap
" remap insert mode
" :inoremap

" specify directory for plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'arcticicestudio/nord-vim'
Plug 'preservim/nerdtree'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Telescope requires plenary to function
Plug 'nvim-lua/plenary.nvim'
" The main Telescope plugin
Plug 'nvim-telescope/telescope.nvim'
" An optional plugin recommended by Telescope docs
Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make' }

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'tpope/vim-fugitive'

" initialize plugin system
call plug#end()

lua require('bulletbill')


""
" Plugin Config
""

" Start NERDTree. If a file is specified, move the cursor to its window.
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

let NERDTreeShowHidden=1

let g:airline_powerline_fonts = 1

" User Customizations
syntax on
colorscheme nord

" map leader
let g:mapleader = ','

nnoremap <leader>n :NERDTreeFocus<CR>

" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Get out of insert mode more easily
imap jj <Esc>

" Sort words in a line - https://stackoverflow.com/a/1329899
:vnoremap <F2> d:execute 'normal a' . join(sort(split(getreg('"'))), ' ')<CR>


set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching brackets.
set relativenumber                  
set wildmode=longest,list   " get bash-like tab completions
set cc=85                   " set an column border for long lines 

" Indenting
set tabstop=2
" converts tabs to white space
set expandtab               
set shiftwidth=2
set softtabstop=2
set autoindent    
set smartindent

" Save undo history
set undofile

" Searching
set ignorecase              " case insensitive matching
set hlsearch                " highlight search results
filetype plugin indent on   " allows auto-indenting depending on file type

