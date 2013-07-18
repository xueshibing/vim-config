syntax on             " Enable syntax highlighting
let mapleader = ","
set history=1000
set wildmenu
if $COLORTERM == 'gnome-terminal' 
    set term=gnome-256color 
    colorscheme railscasts 
    colorscheme railscasts_textmate
else 
    colorscheme default 
endif 
set directory=/home/rock/.vim/swap
map <leader>n :NERDTreeToggle<CR>
map <leader>t :CommandT<CR>
map <leader>tl :TlistToggle<CR>
map <leader>cc :NERDComComment<CR>
map <leader>c :NERDTreeToggle<CR>
map <F3> :Grep -R --exclude='\''*.svn[-]*'\'' -I<CR>
inoremap jj <Esc>
noremap # #N
set ts=2
set expandtab       "Use softtabstop spaces instead of tab characters for indentation
set shiftwidth=2    "Indent by 4 spaces when using >>, <<, == etc.
set softtabstop=2   "Indent by 4 spaces when pressing <TAB>
set paste
set autoindent      "Keep indentation from previous line
"set smartindent     "Automatically inserts indentation in some cases
"set cindent         "Like smartindent, but stricter and more customisable
set hlsearch
set nobomb
"set number 
vnoremap < <gv
vnoremap > >gv

set nocompatible      " We're running Vim, not Vi!
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

"设定文件编码类型，彻底解决中文编码问题
let &termencoding=&encoding
set fileencodings=utf-8,gbk,ucs-bom,cp936

"----------------below for txt file
"让文本文件也有高亮，thanks to xbeta@smth
augroup filetypedetect
au BufNewFile,BufRead *.* setf ztxt
augroup END
let g:NERDTreeWinSize = 50
