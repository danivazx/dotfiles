" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin(stdpath('data').'/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive' " Use ':G' to send commands to git
Plug 'vim-airline/vim-airline'
Plug 'joshdick/onedark.vim'
call plug#end()
"Load pathogen plugins
"set nocompatible
"Enable syntax highlight
syntax on
"Display more colors?
set t_Co=256
set backspace=eol,indent,start
set encoding=utf-8
set tabstop=4
set smartindent
set shiftwidth=4
set laststatus=2
set number
set ttimeoutlen=0
set scrolloff=5

set hidden " Allows switching buffers without saving the current one
set showcmd " Show commands at bottom right
set cursorline " Highlight current line
set lazyredraw " Vim faster?
set nowrap " Don't wrap lines
set autoindent 
set copyindent " copy the previous indentation on autoindenting
set smarttab
set hlsearch " Highlight search terms
set incsearch "show search mathes as you type
set clipboard=unnamed " copy to clipboard when yanking

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

colorscheme onedark

let g:Powerline_symbols = 'fancy'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
"let g:airline_theme='behelit'
if has("gui_running")
	set guifont=Monaco\ for\ Powerline
	set guioptions-=T
endif


"nmap N :bn<CR>
