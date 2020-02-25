"PlugUpdate
"插件
call plug#begin('~/.config/nvim/plugged')

"icon
Plug 'ryanoasis/vim-devicons'

Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'neoclide/coc.nvim', {'branch': 'release'} "the best completion plugin

"主题
Plug 'chriskempson/vim-tomorrow-theme' " 配色
"Plug 'arcticicestudio/nord-vim' " 北蓝配色
"Plug 'junegunn/seoul256.vim' "配色
Plug 'morhetz/gruvbox' "配色

Plug 'bigzhu/nerdtree' " 左边树形
Plug 'jistr/vim-nerdtree-tabs'

"markdown
"Plug 'majutsushi/tagbar' 
"Plug 'lvht/tagbar-markdown' " markdow 的 toc
Plug 'liuchengxu/vista.vim' " View and search LSP symbols, tags in Vim/NeoVim. (用于显示 markdown toc)
Plug 'plasticboy/vim-markdown'

" golang 相关的
"Plug 'buoto/gotests-vim' " golang 生成测试
"Plug 'tpope/tpope-vim-abolish' " golang  自动生成代码
"Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"Plug 'godoctor/godoctor.vim' " Some refactoring tools
"Plug 'majutsushi/tagbar' " 显示 golang 右侧结构体
"golang 自动补全
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'zchee/deoplete-go', {'build': {'unix': 'make'}}
" Plug 'jodosha/vim-godebug' " Debugger integration via delve
" Plug 'stamblerre/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }

" 文本编辑
Plug 'tpope/tpope-vim-abolish' " 驼峰和下划线转换
"Plug 'dhruvasagar/vim-table-mode' " 表格编辑

"git
Plug 'tpope/vim-fugitive'

" flutter 
Plug 'dart-lang/dart-vim-plugin' "dart
"Plug 'reisub0/hot-reload.vim' "hot reload
" 代码检查
"Plug 'w0rp/ale'
" Vue
"Plug 'pangloss/vim-javascript' "让嵌入html的js也能正确格式化
"Plug 'darthmall/vim-vue' "vim vue
"Plug 'posva/vim-vue' "vue 的高亮
"Plug 'jiangmiao/simple-javascript-indenter' "解决没有分号时候的自动格式化缩进
"Plug 'bigzhu/html5.vim' "完美格式化html以及里面的js css, 让其支持vue
"Plug 'scrooloose/syntastic' "语法检查
"Plug 'sekel/vim-vue-syntastic' "让syntastic支持vue
" Rust
"Plug 'rust-lang/rust.vim'
" toml
"Plug 'cespare/vim-toml'
" nginx
"Plug 'chr4/nginx.vim'
"typescript 插件
"Plug 'leafgarland/typescript-vim'
" python
"Plug 'python-mode/python-mode', { 'branch': 'develop' }
" nginx
"Plug 'chr4/nginx.vim'
"Plug 'lepture/vim-jinja'
" stylus 样式文件 高亮
"Plug 'wavded/vim-stylus'

Plug 'vobornik/vim-mql4' " mql4 高亮

call plug#end()

" 升级命令: PlugUpdate
