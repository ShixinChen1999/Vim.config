set nocompatible
set backspace=indent,eol,start
set number
let mapleader = ','
set nowrap
set showmatch
set encoding=utf-8
set termencoding=utf-8

set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr
set fileencoding=utf-8
"set cul
"highlight CursorLine   cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
"set encoding=utf-8
"set fenc=utf-8
set hlsearch
syntax enable
set tabstop=4
set softtabstop=4
set expandtab
set autoindent
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
filetype off


set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Bundle 'majutsushi/tagbar'
"nmap <Leader>tb :TagbarToggle<CR>      "快捷键设置
let g:tagbar_ctags_bin='ctags'          "ctags程序的路径
let g:tagbar_width=40                   "窗口宽度的设置
map <F3> :Tagbar<CR>
autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()  "如果是c语言的程序的话，tagbar自动开启

Bundle 'scrooloose/nerdtree'
let NERDTreeWinPos='left'
let NERDTreeWinSize=30
"autocmd VimEnter * NERDTree
map <F2> :NERDTreeToggle<CR>

Bundle 'fholgado/minibufexpl.vim'
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
let g:miniBufExplMoreThanOne=0

map <F10> :MBEbp<CR>
map <F12> :MBEbn<CR>


Bundle 'bling/vim-airline'
set laststatus=2

Plugin 'vim-scripts/khaki.vim'
"if !has("gui_running")
"set t_Co=256
"endif
"colorscheme khaki

Plugin 'vim-scripts/DoxygenToolkit.vim'
let g:DoxygenToolkit_authorName="shixinchen@smail.nju.edu.cn"

Plugin 'mhinz/vim-startify'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""     
"mhinz/vim-startify                                                                 
let g:startify_disable_at_vimenter = 1                     "启动Vim时启动Startify   
                                                                                    
"设置书签。                                                                         
let g:startify_bookmarks = [                                                        
    \ '~/.vimrc'                                                                    
    \ ]                                                                             
                                                                                    
"起始页显示的列表长度。                                                             
let g:startify_files_number = 20                                                    
"加载session目录下的记录。                                                          
let g:startify_session_autoload = 1                                                 
"过滤列表，支持正则表达式。                                                         
let g:startify_skiplist = [                                                         
    \ '/.git/',                                                                     
    \ '/.svn/'                                                                      
    \ ]                                                                             
                                                                                    
"新tab自动打开Startify，启动时打开会与NEARDTree冲突。                               
autocmd BufWinEnter *                                                               
    \ if !exists('t:startify_new_tab')                                              
    \     && empty(expand('%'))                                                     
    \     && empty(&l:buftype)                                                      
    \     && &l:modifiable |                                                        
    \   let t:startify_new_tab = 1 |                                                
    \   Startify |                                                                  
    \ endif                                                                         

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""     
"mhinz/vim-startify                                                                 
Bundle 'lfv89/vim-interestingwords'
let g:interestingWordsGUIColors = ['#8CCBEA', '#A4E57E', '#FFDB72', '#FF7272', '#FFB3FF', '#9999FF']
let g:interestingWordsTermColors = ['154', '121', '211', '137', '214', '222']
let g:interestingWordsRandomiseColors = 1 

Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'derekwyatt/vim-scala'
let g:scala_use_builtin_tagbar_defs = 1


Plugin 'stephpy/vim-yaml'
Plugin 'vhda/verilog_systemverilog.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
"set rtp+=~/.vim/bundle/vundle/
"call vundle#rc()
"Bundle 'gmarik/vundle'
"call vundle#rc()
"Bundle 'gmarik/vundle'
" Put your non-Plugin stuff after this line
