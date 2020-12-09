" markdown wiki --------------------------------------------------------------------------------------------------------------
let g:md_path='~/Dropbox/cheese/'
let g:sub_path='tips/'
"hugo创造文件时需要config.toml
let g:blog_path='~//Projects/blog/'

map <c-f> :SearchMD 
" 用这一行来跳转文件(search 时用)
nmap <c-g> 0v$<esc>:execute "CreateOrOpenMD ".getline('.').".md"<cr>
" 取到v 下选中的值, 再用 open 打开
" 选中认为不包含路径, 默认指向 /tips
vmap <c-g> <c-">ay: execute "CreateOrOpenMD ".g:sub_path."/<c-r>a.md"<cr>
" 关了 folding
let g:vim_markdown_folding_disabled = 1

"找 md 
if exists("*SearchMD")
else
    function! SearchMD(Name)
        "保证基础路径
        execute "cd ".g:md_path
        "首先要设置运行路径,避免路径不同
        ":  echom "silent !markdown_search.py '".g:md_path."' '".a:Name."'"
        execute "silent !markdown_search.py '".g:md_path."' '".a:Name."'"
        execute ":redraw!"
        execute "e search.md"
    endfunction
endif
command! -nargs=1 SearchMD call SearchMD("<args>")

"生成 markdow 文件
if exists("*CreateOrOpenMD")
else
    function! CreateOrOpenMD(FileName)
      "保证基础路径
      execute "cd ".g:md_path
      let g:path_file=g:md_path.a:FileName
      "文件不存在就用 hugo 创建并且替换参数
      if empty(glob(g:path_file))
        execute "cd ".g:blog_path
        echo "silent ! hugo new '".a:FileName."'"
        execute "silent ! hugo new '".a:FileName."'"
        execute "e ".g:path_file
        ":%s/draft: true/draft: false/g
        "make sure path to md_path
        execute "cd ".g:md_path
      else
        "存在直接编辑
        execute "e ".g:path_file
      endif
    endfunction
endif
command! -nargs=1 CreateOrOpenMD call CreateOrOpenMD("<args>")
