"插件
call plug#begin('~/.config/nvim/plugged')
" 左边树形
Plug 'bigzhu/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
" markdow 的 toc
Plug 'majutsushi/tagbar'
" mql4 高亮
Plug 'vobornik/vim-mql4'
" golang 相关的
Plug 'buoto/gotests-vim' " golang 生成测试
Plug 'tpope/tpope-vim-abolish' " golang  自动生成代码
Plug 'bigzhu/vim-go' " Amazing combination of features.
Plug 'godoctor/godoctor.vim' " Some refactoring tools
"golang 自动补全
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-go', {'build': {'unix': 'make'}}
Plug 'jodosha/vim-godebug' " Debugger integration via delve
































call plug#end()
