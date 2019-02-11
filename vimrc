" 开启原生代码高亮
syntax on

" 输入时的当前行状态显示
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul " 输入时当前行高亮

" 解决中文乱码问题，打开文档时逐一选择测试最终编码
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set termencoding=utf-8 " 其它编码工具打开也不会丢失乱码
set encoding=utf-8 " 编码格式

set confirm " 在处理未保存或只读文件的时候，弹出确认选择
set wrap " 自动换行
set nu " 显示行号
set autoindent " 自动对齐
set expandtab " 输入Tab自动转换称空格
set tabstop=4 " 设定tab长度为4
set shiftwidth=4 " 设定缩进的宽度为4

" 总是显示状态行
set laststatus=2
" 命令行（在状态行下）的高度，默认为1，这里是2
set cmdheight=1
" 我的状态行显示的内容（包括文件类型和解码）
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%y年%m月%d日\ %H:%M\")}

set showmatch " 高亮显示匹配的括号
set matchtime=1 " 匹配括号高亮的时间（单位是十分之一秒）
set nowrapscan " 禁止搜索到文件两端时重新搜索
set showcmd " 状态栏显示目前所执行的指令

" 查找时忽略大小写
set ignorecase
set incsearch
set hlsearch

" 当光标一段时间保持不动了，就禁用高亮
autocmd cursorhold * set nohlsearch
" 当输入查找命令时，再启用高亮
noremap n :set hlsearch<cr>n
noremap N :set hlsearch<cr>N
noremap / :set hlsearch<cr>/
noremap ? :set hlsearch<cr>?
noremap * *:set hlsearch<cr>

" 查找结果的前景色改为深色，背景色为浅色
highlight Search ctermbg=grey ctermfg=black

