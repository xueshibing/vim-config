set nocompatible      " We're running Vim, not Vi!
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'L9'
Plugin 'tpope/vim-rails'
Plugin 'bufexplorer.zip'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'FuzzyFinder'
Plugin 'Align'
Plugin 'kien/ctrlp.vim'

call vundle#end()
filetype plugin indent on



syntax on             " Enable syntax highlighting
let mapleader = ","
"colorscheme molokai
colorscheme desert
"set background=dark
"let g:molokai_original = 1
"let g:rehash256 = 1
"set iskeyword+=!,?,@,_
set history=500
set wildmenu
set wildmode=list:full
set wildignore+=*.o,*.obj,.git,.svn,*.png,*.bmp,*.jpg,*.log,*.ico,*.swf,*.gif
set autoread
set nonumber
"set dictionary+=/usr/share/dict/words
set list
set listchars=trail:.
set noerrorbells 
set novisualbell
set t_vb=
" Fast editing of the .vimrc
"nmap <leader>re :e! ~/.vimrc<CR>

"" When vimrc is edited, reload it
"autocmd! bufwritepost vimrc source ~/.vimrc
"highlight LeaderTab guifg=#666666
" 匹配行首tab
"match LeaderTab /\t/
nmap <leader>w :w!<CR>
map <silent> <leader><CR> :noh<CR>
"移动代码
"nmap <C-p> <ESC>yyp
"nmap <C-UP> <ESC>mz:m-2<CR>`z
"nmap <C-DOWN> <ESC>mz:m+<CR>`z
"vmap <C-UP> :m'<-2<CR>`>my`<mzgv`yo`z
"vmap <C-DOWN> :m'>+<CR>`<my`>mzgv`yo`z
"大小写转换
nmap <leader>u mzgUw`z
nmap <leader>l mzguw`z
nmap <leader>xxd :%!xxd<CR>

set mouse=i
nmap <leader>ma :set mouse=a<CR>
nmap <leader>mc :set mouse=i<CR>
"nmap <leader>c :CMiniBufExplorer<cr>
"nmap <leader>u :UMiniBufExplorer<cr>
nmap <leader>tb :MiniBufExplorer<cr>

"set directory=~/.vim/swap
nmap <leader>nn :set nonumber!<CR>
nmap <leader>ne :set list!<CR>
nmap <leader>qq :only<CR>
nmap <leader>qa :qa<CR>
"nmap <leader>f :CommandT<CR>
nmap <leader>tl :TlistToggle<CR>
nmap <leader>tn :tabnew<CR>
nmap <leader>tc :tabclose<CR>
nmap <leader>to :tabonly<CR>
vmap <leader>ae :Align =<CR>
vmap <leader>ah :Align => { }<CR>
vmap <leader>av :Align \|<CR>
vmap <leader>ac :Align #<CR>

"noremap <C-TAB> <ESC>:tabnext<CR>
"noremap <C-S-TAB> <ESC>:tabprevious<CR>
"inoremap <C-TAB> <ESC>:tabnext<CR>i
"inoremap <C-S-TAB> <ESC>:tabprevious<CR>i

"noremap <C-RIGHT> <ESC>:tabnext<CR>
"noremap <C-LEFT> <ESC>:tabprevious<CR>
"inoremap <C-RIGHT> <ESC>:tabnext<CR>i
"inoremap <C-LEFT> <ESC>:tabprevious<CR>i
"noremap <C-a> <ESC>:bp<CR>
"noremap <C-e> <ESC>:bn<CR>
nmap <leader>e :NERDTreeToggle<CR>
"nmap <leader>clr :Calendar<CR>
inoremap jj <Esc>
noremap # #N
nmap <leader>sw #N

" Ctrl-s saves
"inoremap <C-s> <Esc>:w<CR>a
"nnoremap <C-s> :w<CR>
"FUF
nmap <leader>f :FufFile!<CR>
"nmap <leader>fg :FufTaggedFile<CR>
"nmap <leader>ft :FufTag<CR>
"nmap <leader>fb :FufBuffer<CR>
"nmap <leader>fm :FufMruFile<CR>
"let g:fuf_keyOpenSplit = 'i'
"let g:fuf_keyOpenVsplit='s'

nmap <leader>pc :pclose<CR>
set ts=2
set expandtab       "Use softtabstop spaces instead of tab characters for indentation
set shiftwidth=2    "Indent by 4 spaces when using >>, <<, == etc.
set softtabstop=2   "Indent by 4 spaces when pressing <TAB>
set autoindent      "Keep indentation from previous line
"set smartindent     "Automatically inserts indentation in some cases
"set cindent         "Like smartindent, but stricter and more customisable
set hlsearch
set ignorecase "Ignore case when searching
set smartcase
set incsearch "Make search act like search in modern browsers

set nobomb
nnoremap < v<
nnoremap > v>
vnoremap < <gv
vnoremap > >gv
set shortmess=at
set nofoldenable
set foldlevel=1000
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

"设定文件编码类型，彻底解决中文编码问题
let &termencoding=&encoding
set fileencodings=utf-8
",gbk,ucs-bom,cp936

"----------------below for txt file
"让文本文件也有高亮，thanks to xbeta@smth
augroup filetypedetect
au BufNewFile,BufRead *.* setf ztxt
augroup END


" taglist插件配置
let Tlist_Show_One_File=1    " 不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow=1  " 如果taglist窗口是最后一个窗口，则退出vim
"let Tlist_Use_Right_Window=1 " 在右侧窗口中显示taglist窗口

"Remap VIM 0
"map 0 ^
"map 9 $
"map <SPACE> /
"nmap <leader>OO O<ESC>
"nmap <leader>oo o<ESC>
nmap <leader>ct  ~
nmap <leader>ss :%s///g<LEFT><LEFT><LEFT>
nmap <leader>st :%s/\s\+$//g<CR>
nmap <leader>sb :%s/^\s*\t\+/  /g<CR>
nmap <leader>se :s/^/\=
nmap <leader>me :.,$normal @
map <F2> :set nowrap! <CR>
map <F5> :NERDTreeToggle<CR>
nmap <F8> <ESC>:!~/gems/rtags/bin/rtags -R --vi `find app lib -name *.rb`<CR>
nmap <leader>re <ESC>:!~/gems/rtags/bin/rtags -R --vi `find app lib -name *.rb`<CR>
nmap <leader>rv <ESC>:Rview<CR>
nmap <leader>rc <ESC>:Rcon<CR>
set pastetoggle=<F9> "default

map <F3> :Grep -R -I<CR>
"let Grep_Path = '/bin/grep'
let Grep_Skip_Files = '*.bak *~ *.o *.obj .git *.png *.bmp *.jpg *.ico *swf *.gif *.js *.css tags'
let Grep_Skip_Dirs = 'tmp log cache public .git .svn tags'
"窗口
nmap <leader>ww <C-W>_<C-W>\|
nmap <leader>we <C-W>=

nmap <leader>de "_d
nmap <leader>wr <C-W>_
nmap <leader>wc <C-W>c
nmap <leader>wl <C-W>\|
nmap <leader>wf <C-W>g]
nmap <leader>wn <C-W>n
nmap <leader>d <C-W>g}
nmap <leader>wt <C-W>T
nmap <leader>wp <C-W>p
nmap <leader>wr <C-W>r
nmap <leader>wx <C-W>x
nmap <leader>ws <C-W>s
nmap <leader>wv <C-W>v
map <C-j> <C-W>+
map <C-k> <C-W>-
map <C-h> <C-W><
map <C-l> <C-W>>
"map <C-+> <C-W>+
"map <C--> <C-W>-
let g:NERDTreeWinSize=31
nmap <leader>cf =)
nmap <leader>rb <ESC>:bd<CR>
nmap <silent> <leader>gj :cn<Cr>
nmap <silent> <leader>gk :cN<Cr>
nmap <silent> <leader>gw :cw<Cr>
nmap <silent> <leader>gc :ccl<Cr>
"let g:vimim_toggle_list='english,wubi,pinyin'
"let g:vimim_chinese_input_mode = 0
  let g:fuf_abbrevMap = {
            \   "m:" : [
            \     "app/models/**",
            \     "app/mailers/**",
            \   ],
            \   "l:" : [
            \     "lib/**",
            \     "app/services/**",
            \   ],
            \   "h:" : [
            \     "app/helpers/**",
            \   ],
            \   "c:" : [
            \     "app/controllers/**",
            \   ],
            \   "v:" : [
            \     "app/views/**",
            \   ],
            \ }
