" 生成测试用例
nmap <buffer> <f1> :GoTests<cr>
" 运行测试
nmap <buffer> <f2> :GoTestFunc -v <cr>
" 默认不要折叠
set foldmethod=syntax
set foldlevel=20
set foldlevelstart=20

""允许覆盖默认映射
let g:go_def_mapping_enabled = 0
"" GoReferrers 时, 下方显示的内容
"let g:go_list_height = 6
"" 跳转到定义时, 打开新 tab
"au FileType go nmap gd <Plug>(go-def-tab)
"au FileType go nmap gr <Plug>(go-referrers)
"" 跳转到定义时 激活已打开的 tab
"let g:go_def_reuse_buffer = 1
"
"" 新窗口中显示 test 的内容
let g:go_term_enabled = 1
" 窗口分割的方式
set splitbelow " 分割在下边
let g:go_term_mode = "split" "上下分割
let g:go_list_autoclose = 1
let g:go_list_type_commands = {"GoTest": "locationlist"}
