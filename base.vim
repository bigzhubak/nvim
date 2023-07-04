"execute pathogen#infect()
" 通用配置 ------------------------------------------------------------------------------------------------------------------
" Tagbar 需要标准的 bash 来执行一些东西。xonsh 会报错
set shell=/bin/bash
" 让中文可以在 nvim 里面复制粘贴 
lang zh_CN.UTF-8
" 输入tab 转为2个空格
set expandtab
set softtabstop=2
set tabstop=2 "设置制表符空格数
set shiftwidth=2 "设置缩进空格数

"无限回滚
set undodir=~/.vimundodir
set undofile

"fold
set foldmethod=indent
"disable auto fold
set foldlevel=20

" 映射 leader 键为 空格
let g:mapleader = ' '
