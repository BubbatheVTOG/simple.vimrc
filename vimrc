"**USER DEFINED CONFIGS** 
set path+=**		" appends $PATH to find command
set wildmenu		" allows us to use the wildcard file menu
set background=dark	" Use text colors that look good on a dark background. 
set autoindent		" Auto intent to the same col when on new line.
set smarttab		" Auto insert tabs spaces for curly braces. 
set mouse=a 		" Enables mouse.
set ruler		" Enables cursor location.
set nocompatible	" Disables legacy stuff?
set showmode		" Shows what mode you're in.
set showcmd		" Show partial command in status line. 
set hlsearch		" While searching, highlight (and search) as you type. 
set incsearch		" While searching, take you directly to where the so far typed pattern matches. 
set ignorecase		" While searching, ignore case. 
set smartcase		" While searching, use capitals when you use capitals.
set showmatch		" While search, show exact matches. 
set spell		" Enable English spellcheck. 
set relativenumber	" Enable relative number position when using 'set number'
set number		" Enable line numbering. 
set nowrap		" Disable line wrapping cuz we do it live!
filetype plugin indent on	" Syntax for different file types. Plus auto indent for that file type. 
syntax on		" Syntax on bitch. 
autocmd BufWinLeave *.* mkview		" Save code folds on exit.
autocmd BufWinEnter *.* silent loadview	" Create code folds from save.
