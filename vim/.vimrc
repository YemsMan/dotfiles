call plug#begin('~/.vim/plugged')

" Color Scheme
Plug 'morhetz/gruvbox'

" File Explorer / Sidebar
Plug 'preservim/nerdtree'

" Code Auto-Completion & IntelliSense
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Status Bar Customization
Plug 'vim-airline/vim-airline'

" Git Integration
Plug 'airblade/vim-gitgutter'

call plug#end()

" Quick configuration for themes and shortcuts
colorscheme gruvbox
let g:NERDTreeShowHidden=1
nnoremap <leader>n :NERDTreeToggle<CR>

" General Settings
syntax on                   " Enable syntax highlighting
set number                  " Show absolute line numbers
set relativenumber          " Show relative line numbers for fast jumping
set mouse=a                 " Enable mouse support for scrolling/clicking
set clipboard=unnamedplus   " Share clipboard with the system

" Indentation & Tabs (4 spaces per tab)
set tabstop=4               " Number of visual spaces per TAB
set softtabstop=4           " Number of spaces a TAB counts for while editing
set shiftwidth=4            " Number of spaces to use for autoindent
set expandtab               " Convert TABs to spaces
set autoindent              " Copy indent from current line when starting a new one
set smartindent             " Insert indents automatically based on language rules

" Search Settings
set hlsearch                " Highlight search results
set incsearch               " Show search matches as you type
set ignorecase              " Ignore case when searching
set smartcase               " Override ignorecase if search contains capital letters

" colours
set termguicolors
set background=dark

" --- Code Navigation Shortcuts ---
" Press 'gd' to jump instantly to where a function or variable is defined
nmap <silent> gd <Plug>(coc-definition)
" Press 'gr' to see all files where a specific variable is called
nmap <silent> gr <Plug>(coc-references)
" Press 'K' while hovering over code to display floating manual definitions
nnoremap <silent> K :call CocActionAsync('doHover')<CR>

" --- Automated Formatting Shortcut ---
" Type :Format to clean up code using Black (Python) or Clang-Format (C++)
command! -nargs=0 Format :call CocActionAsync('format')

