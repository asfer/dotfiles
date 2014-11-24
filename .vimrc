" Arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Wrapped lines
nnoremap j gj
nnoremap k gk

" Window navigation
map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-c> <c-w>c

" Remove highlight
nnoremap <cr> :nohlsearch<cr>

" Edit configuration 
noremap <leader>ev :vsplit $MYVIMRC<cr>
noremap <leader>sv :source $MYVIMRC<cr>
autocmd! bufwritepost $MYVIMRC source $MYVIMRC

" Make
noremap <F4> :make<CR>


" General 
set nocompatible        " be iMproved
set history=1024
set undolevels=1024
set autowrite           " writes on make/shell commands
set autoread		    " reloads file when changed externally
set hidden		        " hides buffers instead of closing 

" Backup / Swap
set nobackup
set noswapfile

" Bells
set visualbell	
set noerrorbells

" Mouse
set mouse=a             " enable mouse
set mousehide           " hide mouse while typing 

" Filetype
filetype on
filetype plugin on
filetype indent on

" Visual
syntax on               " enable syntax highlighting
set title               " window/terminal title
set number              " show line numbers
set ruler               " show ruler
set showcmd             " show command being typed 
set wrap                " wrap lines
set t_Co=256
set background=light

" Enconding
set encoding=utf-8

" Wild menu (command-line completion)
set wildmenu
set wildignore=*.swp,*.bak,*.pyc,*.class,*.o
set wildignorecase
set wildmode=list:longest		" shell like 

" Folding
set foldenable
set foldmethod=marker   " methods: manual,syntax,indent,marker
set foldmarker={{{,}}}  " marker definition

" Match and search
set hlsearch            " enable search highlighting
set incsearch           " incrementally match the search
set wrapscan            " search scan wraps lines
set ignorecase          " ignore case in search patterns
set smartcase           " override 'ignorecase' for upper case chars

" Matching brackets
set showmatch           " briefly jumps to matching brackets
set matchtime=5         " bracket blinking time of 'showmatch'

" Unprintable Characters
set nolist
set listchars=tab:▸\ ,eol:¬
highlight SpecialKey guifg=#4a4a59
highlight NonText    guifg=#4a4a59
noremap <leader>l :set list!<cr>

" Tabs
set expandtab           " insert spaces instead of tabs
set softtabstop=4       " number of spaces when expanding tabs (expandtab)
set shiftwidth=4        " number of spaces for (auto)indent
set tabstop=4           " visual number of spaces a tab counts for (noexpandtab)
autocmd FileType ruby setlocal expandtab softtabstop=2 shiftwidth=2 

" Identation
set autoindent          " copy indentation from previous line
set smartindent	        " add indentation when opening a new block
" set cindent


" Vundle package manager
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle
Plugin 'gmarik/Vundle.vim'

" colorschemes
Plugin 'flazz/vim-colorschemes'

" NERDTree
Plugin  'scrooloose/nerdtree'
let g:NERDTreeWinSize = 25
let NERDTreeIgnore = ['\.o$','\.pyc$','\.pickle$','\.pdf$','\.png$']
noremap <leader>nt :NERDTreeToggle<cr>
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" YouCompleteMe
Plugin 'Valloric/YouCompleteMe'

" tComment
Plugin 'tomtom/tcomment_vim'
vnoremap // :TComment<CR>
nnoremap // :TComment<CR>

Plugin 'L9'
Plugin 'FuzzyFinder'

Plugin 'UltiSnips'
Plugin 'tpope/vim-surround'
Plugin 'matchit.zip'

Plugin 'kchmck/vim-coffee-script'
Plugin 'digitaltoad/vim-jade'
Plugin 'vim-stylus'

call vundle#end()
filetype plugin indent on	        " Vundle

