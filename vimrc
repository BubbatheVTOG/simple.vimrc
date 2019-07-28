" =============================================================================
" GENERAL CONFIGURATION
" =============================================================================

" Environmental Settings
" -----------------------------------------------------------------------------
set encoding=utf8
set t_Co=256

" Genearal Settings
" -----------------------------------------------------------------------------
filetype plugin indent on		" Syntax for different file types. Plus autoindent for that file type.
set path+=**				" appends $PATH to find command
syntax on				" Syntax on bitch.
set wildmenu				" allows us to use the wildcard file menu
set background=dark			" Use text colors that look good on a dark background.
set autoindent				" Auto intent to the same col when on new line.
set smarttab				" Auto insert tabs spaces for curly braces.
set ruler				" Enables cursor location.
set wrap lbr 				" Wrap on words.
set nocompatible			" Disables legacy stuff. (for vim)
set showmode				" Shows what mode you're in.
set showcmd				" Show partial command in status line.
set showmatch				" Show matching brackets.
set splitright 				" Open new horizontal splits right of the current one.
set splitbelow 				" Open new vertical splits below the current one.
set completeopt=longest,menuone,preview	" Better autocompletion.
" set autowriteall 			" Autosave files.
" set hidden 				" Buffers become hidden when abandoned.
set autoread 				" Reload the file when it changes outside of (n)vim.
set visualbell 				" Use visual bell instead of beeping.
set history=1000 			" Increase history.
set undolevels=1000 			" Increase undo levels.
set scrolloff=5 			" Sets the scroll off set.
set confirm 				" Prompt conformation dialogs
set tags=tags; 				" Sets tag file to recursively up directory hierarchy. (The `;` is VERY important)
if has('mouse')
    set mouse=a 			" Enables mouse.
endif
if has('neovim')
    set inccommand=nosplit
endif

" Search Settings
" -----------------------------------------------------------------------------
set hlsearch				" While searching, highlight (and search) as you type.
set incsearch				" While searching, take you directly to where the so far typed pattern matches.
set ignorecase				" While searching, ignore case.
set smartcase				" While searching, use capitals when you use capitals.
set showmatch				" While searching, show exact matches.

" Line Number Settings
" -----------------------------------------------------------------------------
set relativenumber			" Enable relative number position when using 'set number'
set number				" Enable line numbering.

" Backup Settings
" -----------------------------------------------------------------------------
set nobackup 				" Disable backups. YOLO
set noswapfile 				" Disable swapfiles.

" Persistant Undo
" -----------------------------------------------------------------------------
" Use persistent history.
if !isdirectory("/tmp/.vim-undo-dir")
    call mkdir("/tmp/.vim-undo-dir", "", 0700)
endif
set undodir=/tmp/.vim-undo-dir
set undofile

" Netrw Settings
" -----------------------------------------------------------------------------
" let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25


" =============================================================================
" CUSTOM KEYBINDS
" =============================================================================

" CONTROVERSY
" -----------------------------------------------------------------------------
nnoremap ; :

" Leader Defined
" -----------------------------------------------------------------------------
let mapleader = ","

" Clear Search Highlights
" =============================================================================
nnoremap <leader>nh	:noh<CR>

" Split movement. {{{1
" -----------------------------------------------------------------------------
" This maps keys to move between splits easier.
map <C-h> <C-W>h
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-L> <C-W>l

" Visual mode code block indentation. {{{1
" -----------------------------------------------------------------------------
" When visually selecting a block and changing the indentation, don't unselect.
vnoremap < <gv
vnoremap > >gv

" Buffer Binds {{{1
" -----------------------------------------------------------------------------
" These binds are for changing buffers.
nnoremap <leader>ls	:ls<CR>
inoremap <leader>bn 	<ESC>:bnext<CR>
inoremap <leader>bp 	<ESC>:bprevious<CR>
nnoremap <leader>bn  	:bnext<CR>
nnoremap <leader>bp 	:bprevious<CR>
nnoremap <leader>bo 	:buffers<CR>:buffer<Space> 	" Open buffer
nnoremap <leader>bd 	:buffers<CR>:bdelete<Space> 	" Delete buffer<Paste>

" Reformatting Binds {{{1
" -----------------------------------------------------------------------------
nnoremap <leader>rf gg=G`` 				" Format the whole file
nnoremap <leader>ra gggqgG'' 				" Include list
