filet indent on  " filetype 用于开启文件类型检查，并且载入与该类型对应的缩进规则。
set nocp  " nocompatiable 不与 Vi 兼容，即采用 Vim 自己的操作命令
set hi=9999  " history
set rnu            " relativenumber 表示显示相对行号
set fdm=indent       " foldmethod
set fen       " foldenable 用于开启代码折叠的功能 可以分为 manual（手工折叠）、indent（缩进折叠）、marker（标记折叠）和 syntax（语法折叠）
set wmnu       " wildmenu 用于扩展 VIM 命令行的补全功能, 输入部分指令后，按下 Tab 键自动补全。
set ic       " ignorecase 搜索时默认忽略大小写
set scs       " smartcase 如果也设置了 ignorecase，那么对于有大写字母的搜索词，将大小写敏感；其他情况都是大小写不敏感
set ls=2       " laststatus 用于是否显示状态栏。0 表示不显示，1 表示只在多窗口时显示，2 表示显示
set sc       " showcmd 用于在普通模式下，在底部显示当前键入的指令
set nomagic       " 关闭正则表达式匹配的功能，仅有 ^ $ 具有特殊含义
set report=0       " 用于设定在多少数值以上的行被更改时，在屏幕下方提示更改的行数，设置为 0 则总是提示
set mat=0       " matchtime 默认时间 500 ms
set sm       " showmatch 表示在光标遇到圆括号、方括号、大括号时，自动高亮对应的另一个圆括号、方括号和大括号
set nu       " number 
set si       " smartindent 开启智能缩进，对当前输入的语句和符号做出相应的缩进行为
set ts=4       " tabstop 设置当按下 Tab 键时，VIM 显示的空格数
set hls       " hlsearch 打开搜索高亮模式，若搜索找到匹配项就高亮显示所有匹配项
set sw=4       " shiftwidth 定义了每一次缩进的长度，比如说，当使用 << 和 >> 进行缩进的时候，VIM 使用的数值就是这个
set sts=4       " softtabstop 会影响 TAB 插入的空格。所以我们总是把 softtabstop 设定成和 tabstop 一样的数值
set sta       " smarttab 只作用于行首位置
sy on       " syntax 用于开启语法高亮

"可以输入:help '属性名' 来查询对应的设置属性的详细介绍

:inoremap ( ()<ESC>i
:inoremap [ []<ESC>i
:inoremap { {}<ESC>i
:inoremap {<CR> {<CR>}<ESC>O
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i


:inoremap ) <c-r>=Close(')')<CR>
:inoremap ] <c-r>=Close(']')<CR>
:inoremap } <c-r>=Close('}')<CR>
:inoremap } <c-r>=Close('"')<CR>
:inoremap } <c-r>=Close(''')<CR>

:inoremap <F8> #include<bits/stdc++.h><CR>using namespace std;<CR>typedef long long ll;<CR>

func! Close(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endfunc

map <C-A> ggVG"+y
map <C-S> ggVGc
map <F9> :w<CR>:!g++ -O2 -std=c++11 -Wall -Wextra -Wshadow -DDEBUG % -o %<<CR>
map <F10> :!time ./%< <in.txt