let mapleader = ','
let g:mapleader = ','

set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'dracula/vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'valloric/youcompleteme'
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-glaive'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'a.vim'
Plugin 'brookhong/cscope.vim'
Plugin 'chazy/cscope_maps'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'craigemery/vim-autotag'

" All of your Plugins must be added before the following line
call vundle#end()            " required
" the glaive#Install() should go after the "call vundle#end()"
call glaive#Install()
" filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set bg=dark
color dracula
set nocompatible " 关闭 vi 兼容模式
syntax on " 自动语法高亮
set number " 显示行号
set cursorline " 突出显示当前行
set ruler " 打开状态栏标尺
set shiftwidth=4 " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4 " 使得按退格键时可以一次删掉 4 个空格
set tabstop=4 " 设定 tab 长度为 4
set expandtab " 设定 tab 扩展成空格 
set nobackup " 覆盖文件时不备份
" set autochdir " 自动切换当前目录为当前文件所在的目录
filetype plugin indent on " 开启插件
set backupcopy=yes " 设置备份时的行为为覆盖
set ignorecase smartcase " 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
set nowrapscan " 禁止在搜索到文件两端时重新搜索
set incsearch " 输入搜索内容时就显示搜索结果
set hlsearch " 搜索时高亮显示被找到的文本
set noerrorbells " 关闭错误信息响铃
set novisualbell " 关闭使用可视响铃代替呼叫
set t_vb= " 置空错误铃声的终端代码
set showmatch " 插入括号时，短暂地跳转到匹配的对应括号
set matchtime=2 " 短暂跳转到匹配括号的时间
set magic " 设置魔术
set hidden " 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存
set guioptions-=T " 隐藏工具栏
set guioptions-=m " 隐藏菜单栏
set smartindent " 开启新行时使用智能自动缩进
set backspace=indent,eol,start " 不设定在插入状态无法用退格键和 Delete 键删除回车符
set cmdheight=1 " 设定命令行的行数为 1
set laststatus=2 " 显示状态栏 (默认值为 1, 无法显示状态栏)
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\ " 设置在状态行显示的信息
set nofoldenable " 禁用折叠
set tags=tags; " 设置TAGS
set fileencoding=utf-8 " 设置TAGS
set textwidth=0 " 设置不自动换行
set wrapmargin=0 " 设置不自动换行
" set foldenable " 开始折叠
" set foldmethod=syntax " 设置语法折叠
" set foldcolumn=0 " 设置折叠区域的宽度
" setlocal foldlevel=1 " 设置折叠层数为

let g:ycm_server_python_interpreter='/usr/local/bin/python'
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ctrlp_working_path_mode = '0'
let g:ctrlp_max_files = '0'
let g:ycm_server_use_vim_stdout = 1
let g:ycm_server_log_level = 'debug'
nmap <M-g>: YcmCompleter GoToDefinitionElseDeclaration
" autocmd VimEnter * NERDTree
" autocmd VimEnter * wincmd p
Glaive codefmt plugin[mappings]
Glaive codefmt google_java_executable="java -jar /path/to/google-java-format-VERSION-all-deps.jar"
noremap <Leader>cr :silent cscope reset<CR>
noremap <Leader>fs :cs find s <C-R>=expand("<cword>")<CR><CR>
noremap <Leader>fg :cs find g <C-R>=expand("<cword>")<CR><CR>
noremap <Leader>fc :cs find c <C-R>=expand("<cword>")<CR><CR>
noremap <Leader>ft :cs find t <C-R>=expand("<cword>")<CR><CR>
noremap <Leader>fe :cs find e <C-R>=expand("<cword>")<CR><CR>
noremap <Leader>ff :cs find f <C-R>=expand("<cfile>")<CR><CR>
noremap <Leader>fi :cs find i <C-R>=expand("%")<CR>$<CR>
noremap <Leader>fd :cs find d <C-R>=expand("<cword>")<CR><CR>
noremap <C-j> :cn<CR>
noremap <C-k> :cp<CR>
