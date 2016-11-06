" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
 runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim74/vimrc_example.vim or the vim manual
" and configure vim to your own liking!



"**USER DEFINED CONFIGS** 
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
