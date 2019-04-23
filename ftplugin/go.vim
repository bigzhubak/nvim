" 自动导入依赖
let g:go_fmt_command="goimports"
" Set neosnippet as snippet engine
let g:go_snippet_engine="neosnippet"
" Set whether the JSON tags should be snakecase or camelcase.
let g:go_addtags_transform = "snakecase"
" Fix for location list when vim-go is used together with Syntastic
let g:go_list_height=10
" 不要查 errcheck 太多奇怪的报错了
let g:go_metalinter_enabled=['vet', 'golint', 'deadcode']
" 保存时自动检查错误, 只显示当前打开的文件中的错误, 为毛?
let g:go_metalinter_autosave=1
let g:go_metalinter_autosave_enabled=g:go_metalinter_enabled
" 只有手工检查, 真是的
nmap <F1> :GoMetaLinter<cr> 
" 不要自动跳转到错误
let g:go_jump_to_error=0
" 用更稳定的 guru 来做代码跳转
let g:go_def_mode = 'guru'
"=====================================编辑的修改
" 显示为2个空格
set noexpandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
" 生成测试用例
nmap <buffer> <F2> :GoTests<cr>
" 运行测试
nmap <buffer> <F3> :GoTestFunc -v <cr>
" 默认不要折叠
set foldmethod=syntax
set foldlevel=20
set foldlevelstart=20
" 允许覆盖默认映射
let g:go_def_mapping_enabled = 0
" GoReferrers 时, 下方显示的内容
let g:go_list_height = 6
" 跳转到定义时, 打开新 tab
nmap gd <Plug>(go-def-tab)
nmap gr <Plug>(go-referrers)
" 跳转到定义时 激活已打开的 tab
let g:go_def_reuse_buffer = 1
" 新窗口中显示 test 的内容
let g:go_term_enabled = 0
" 窗口分割的方式
set splitbelow " 分割在下边
let g:go_term_mode = "split" "上下分割
let g:go_list_autoclose = 1
let g:go_list_type_commands = {"GoTest": "quickfix"}
" 打开右边的结构体
:TagbarOpen
