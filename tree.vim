" NERDTree--------------------------------------------------------------------------------------------------------------
"默认打开tree
let g:nerdtree_tabs_open_on_console_startup=1
"默认打开时，光标总是落在内容上
let g:nerdtree_tabs_smart_startup_focus = 2
"autocmd VimEnter * NERDTree
"tab \n 打开关闭 tree
map <Leader>n <plug>NERDTreeTabsToggle<CR>
"让tree打开在tab
autocmd BufNew * if winnr('$') == 1 | tabmove99 | endif
let NERDTreeIgnore = ['\.pyc$','nohup.out', 'node_modules']
"打开文件时改变path
autocmd BufEnter * lcd %:p:h
"打开在左边
let g:NERDTreeWinPos = "left"

