" remap normal mode
" :nnoremap
" remap insert mode
" :inoremap
" 
" @see https://github.com/nvim-lua/kickstart.nvim/blob/master/init.lua
"
" specify directory for plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'arcticicestudio/nord-vim'
Plug 'preservim/nerdtree'
Plug 'mortonfox/nerdtree-clip'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'p00f/nvim-ts-rainbow'
Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
"Plug 'saadparwaiz1/cmp_luasnip'
"Plug 'L3MON4D3/LuaSnip'
"Plug 'rafamadriz/friendly-snippets'

" Telescope requires plenary to function
Plug 'nvim-lua/plenary.nvim'
" The main Telescope plugin
Plug 'nvim-telescope/telescope.nvim'
" An optional plugin recommended by Telescope docs
Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make' }

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/vim-easy-align'
Plug 'folke/which-key.nvim'

Plug 'mfussenegger/nvim-dap'
Plug 'suketa/nvim-dap-ruby'

Plug 'vim-ruby/vim-ruby'
Plug 'rodjek/vim-puppet'
Plug 'noprompt/vim-yardoc'

"Plug 'vim-test/vim-test'
Plug 'antoinemadec/FixCursorHold.nvim'
Plug 'nvim-neotest/neotest'
Plug 'olimorris/neotest-rspec'

Plug 'github/copilot.vim'

Plug 'ludovicchabant/vim-gutentags'

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


set splitright

" open .vimrc in a split quickly
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" reload .vimrc to apply changes without reset
nnoremap <leader>sv :source $MYVIMRC<cr>

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>r :NERDTreeFind<CR>
" nnoremap <leader>n :NvimTreeFocus<CR>

" Makes undo like <Command>+z
nmap <leader>z :u<CR>

" Telescope
"nnoremap <leader>ff <cmd>Telescope find_files<cr>
"nnoremap <leader>fg <cmd>Telescope live_grep<cr>
"nnoremap <leader>fb <cmd>Telescope buffers<cr>
"nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" vim-test RSpec
"let test#strategy = "neovim"
"nmap <silent> <leader>t :TestNearest<CR>
"nmap <silent> <leader>T :TestFile<CR>

" Get out of insert mode more easily
imap jj <Esc>
" Shift + Enter will end a block and put cursor inside body
if !exists( "*RubyEndToken" )

  function RubyEndToken()
    let current_line = getline( '.' )
    let braces_at_end = '{\s*\(|\(,\|\s\|\w\)*|\s*\)\?$'
    let stuff_without_do = '^\s*\(class\|if\|unless\|begin\|case\|for\|module\|while\|until\|def\)'
      let with_do = 'do\s*\(|\(,\|\s\|\w\)*|\s*\)\?$'

      if match(current_line, braces_at_end) >= 0
        return "\<CR>}\<C-O>O"
      elseif match(current_line, stuff_without_do) >= 0
        return "\<CR>end\<C-O>O"
      elseif match(current_line, with_do) >= 0
        return "\<CR>end\<C-O>O"
      else
        return "\<CR>"
      endif
    endfunction

endif

imap <buffer> <CR> <C-R>=RubyEndToken()<CR>

" Sort words in a line - https://stackoverflow.com/a/1329899
vnoremap <F2> d:execute 'normal a' . join(sort(split(getreg('"'))), ' ')<CR>


" Clear search highlighting when pressing ESC
"nnoremap <esc> :noh<return><esc>

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
set foldlevel=20
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()

" display tabs and carriage returns
set list 
set listchars=tab:▸\ ,eol:¬

" Save undo history
set undofile

" Searching
set ignorecase              " case insensitive matching
set hlsearch                " highlight search results
filetype plugin indent on   " allows auto-indenting depending on file type

