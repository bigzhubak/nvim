" markdown wiki --------------------------------------------------------------------------------------------------------------
let g:md_path='~/Dropbox/cheese/'
map <c-f> :execute 'silent cd' md_path<cr>:SearchMD 
" 用这一行来跳转文件(search 时用)
nmap <c-g> 0v$<esc>:execute "CreateOrOpenMD ".g:md_path.getline("'<").".md"<cr>
" 取到v 下选中的值, 再用 open 打开
vmap <c-g> <c-">ay: execute "e <c-r>a.md"<cr>
" 关了 folding
let g:vim_markdown_folding_disabled = 1

"找 md 
if exists("*SearchMD")
else
    function! SearchMD(Name)
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
      "文件不存在就用 hugo 创建并且替换参数
      if empty(glob(a:FileName))
        execute "silent ! hugo new ".a:FileName
        execute "e ".a:FileName
        :%s/draft: true/draft: false/g
      else
        "存在直接编辑
        execute "e ".a:FileName
      endif
    endfunction
endif
command! -nargs=1 CreateOrOpenMD call CreateOrOpenMD("<args>")
