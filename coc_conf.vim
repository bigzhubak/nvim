"CocInstall coc-go
"coc-vetur for vuejs
"\'coc-snippets',
let g:coc_global_extensions = [
      \'coc-snippets',
      \'coc-snippets',
      \'coc-prettier',
      \'coc-html',
      \'coc-spell-checker',
      \'coc-explorer',
      \'coc-tsserver',
      \'coc-emmet',
      \'coc-markdownlint',
      \'coc-highlight',
      \'coc-vetur',
      \'coc-go',
      \'coc-pyright',
      \'coc-flutter', 
      \'coc-json', 
      \'coc-git'
      \]


"https://github.com/weirongxu/coc-explorer
"<space>e open explore
"open left explore
:nmap <space>e :CocCommand explorer<CR>
" open right structure
:nmap <space>i :Vista<CR>

" To enable highlight current symbol on CursorHold
" autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for refactor current function or other (add by bigzhu)
nmap <leader>rf <Plug>(coc-refactor)

" find next error
nmap <leader>fn <Plug>(coc-diagnostic-next)
" find prev error
nmap <leader>fp <Plug>(coc-diagnostic-prev)

let g:vista_sidebar_width=40
"show coc-spell-checker suggestion
vmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)

"
"autocmd CursorHold * silent call CocActionAsync('highlight')
