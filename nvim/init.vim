" ==================== PLUGINS ===========================
call plug#begin()
Plug 'sainnhe/sonokai' " Theme
Plug 'vim-airline/vim-airline' " Airline
Plug 'vim-airline/vim-airline-themes'

Plug 'ryanoasis/vim-devicons' " Fonts icon
Plug 'kyazdani42/nvim-web-devicons' " Icons fonts
Plug 'sheerun/vim-polyglot' " syntax highlight

Plug 'preservim/nerdtree' " Files tree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'neoclide/coc.nvim' , { 'branch' : 'release' } " Auto complete
Plug 'honza/vim-snippets' " Snippets
Plug 'jiangmiao/auto-pairs' " () [] etc.

" Search files
if (has("nvim"))
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
endif
call plug#end()


" ================== GLOBAL SETS =========================
syntax on            " Enable syntax highlight
set nu               " Enable line numbers
set relativenumber	 " Enable relative numbers
set tabstop=2        " Show existing tab with 4 spaces width
set softtabstop=2    " Show existing tab with 4 spaces width
set shiftwidth=2     " When indenting with '>', use 4 spaces width
set smarttab         " insert tabs on the start of a line according to shiftwidth
set smartindent      " Automatically inserts one extra level of indentation in some cases
set hidden           " Hides the current buffer when a new file is openned
set incsearch        " Incremental search
set ignorecase       " Ingore case in search
set smartcase        " Consider case if there is a upper case character
set scrolloff=8      " Minimum number of lines to keep above and below the cursor
"set colorcolumn=100  " Draws a line at the given line to keep aware of the line size
"set signcolumn=yes   " Add a column on the left. Useful for linting
set cmdheight=2      " Give more space for displaying messages
set updatetime=100   " Time in miliseconds to consider the changes
set encoding=utf-8   " The encoding should be utf-8 to activate the font icons
set nobackup         " No backup files
set nowritebackup    " No backup files
set splitright       " Create the vertical splits to the right
set splitbelow       " Create the horizontal splits below
set autoread         " Update vim after file update from outside
set mouse=a          " Enable mouse support
set inccommand=split " preview replace
filetype on          " Detect and set the filetype option and trigger the FileType Event
filetype plugin on   " Load the plugin file for the file type, if any
filetype indent on   " Load the indent file for the file type, if any


" ================== THEME =========================
source ~/.config/nvim/modules/theme.vim


" ================== AIRLINE =========================
let g:airline_theme = 'sonokai'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_section_z = 0


" ================== REMAPS =========================
let mapleader="\<space>"
nnoremap <leader>; A;<esc>

nmap op o<Esc>k
nmap oi O<Esc>j
nmap oo A<CR>
" Remove highlight search
nmap <c-n> <cmd>noh<cr>

" Navigate between buffers
nmap <leader><right> :bn<CR>
nmap <leader><left> :bp<CR>

" Delete a buffer
nmap td <cmd>NERDTreeClose<cr> <esc>:bd<CR>

" Create splits
nmap <leader>h :split<CR>
nmap <leader>v :vsplit<CR>

" ================== NERDTREE ========================
nnoremap <leader>e :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <leader>r :NERDTreeRefreshRoot<CR>
let g:WebDevIconsUnicodeDecorateFolderNodes = 0
let g:DevIconsEnableFoldersOpenClose = 0
let g:DevIconsEnableFolderExtensionPatternMatching = 0
let NERDTreeShowHidden=1


" ================== AUTOCMD ========================
" Open a NERDTree automatically when vim starts up
autocmd vimenter * NERDTree
" When open change the focus to the file (and not the NERDTree)
autocmd! VimEnter * NERDTree | wincmd w
" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" ================== TELESCOPE =======================
" Find files using Telescope command-line sugar.
nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <C-f> <cmd>Telescope live_grep<cr>
"nnoremap <leader>fb <cmd>Telescope buffers<cr>
"nnoremap <leader>fh <cmd>Telescope help_tags<cr>

lua require('telescope').setup{ defaults = { file_ignore_patterns = {"node_modules"} } }


" ================== COC ========================
source ~/.config/nvim/modules/coc.vim
