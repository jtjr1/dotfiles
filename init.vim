
"       _            _ _______               _             _____           
"      | |          | |__   __|             | |           |  __ \           
"      | | ___   ___| |  | | __ _ _ __      | |_   _ _ __ | |__) |___ _ __  
"  _   | |/ _ \ / _ \ |  | |/ _` | '_ \ _   | | | | | '_ \|  _  // _ \  _ \
" | |__| | (_) |  __/ |  | | (_| | | | | |__| | |_| | | | | | \ \  __/ | | |
"  \____/ \___/ \___|_|  |_|\__,_|_| |_|\____/ \__,_|_| |_|_|  \_\___|_| |_|




call plug#begin('~/.config/nvim/autoload/plugged')

	Plug 'sheerun/vim-polyglot'
	Plug 'scrooloose/NERDTree'
	Plug 'jiangmiao/auto-pairs'
	Plug 'lifepillar/vim-solarized8' "solarized8
	Plug 'whatyouhide/vim-gotham' "gotham256
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
	Plug 'jeffkreeftmeijer/vim-numbertoggle'
	Plug 'preservim/nerdcommenter'

call plug#end()

" Colour Theme
colorscheme solarized8
set background=dark
set termguicolors
let g:solarized_termtrans=1

" Set Leader key
let mapleader = " "

" Settings
syntax on
set noerrorbells
set hidden
set nowrap
set encoding=utf-8
set pumheight=10
set fileencoding=utf-8
set ruler
set cmdheight=2
set mouse=a
set splitbelow
set splitright
set t_Co=256
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set smartindent
set autoindent
set nu relativenumber
set nobackup
set nowritebackup
set updatetime=300
set timeoutlen=500
set clipboard=unnamedplus
set incsearch
set colorcolumn=80

" Fixes the comment continuation issue
" disable automatic comment insertion
au FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o


" Use alt + hkjl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Coc settings
source $HOME/.config/nvim/autoload/plugged/coc.nvim/coc.vim

" Airline Settings
" Set theme
let g:airline_theme = 'solarized'
let g:airline_solarized_bg='dark'

" enable powerline fonts
let g:airline_powerline_fonts = 1

" Always show tabs
set showtabline=2

" Ranger Plug-in Settings
let g:rnvimr_ex_enable = 1
nmap <space>r :RnvimrToggle<CR>

" NERDTree Settings
nmap <space>t :NERDTree<CR>

" Vim-commenter settings
let g:NERDSpaceDelims = 1
