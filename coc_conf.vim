
"coc-vetur for vuejs
"\'coc-snippets',
let g:coc_global_extensions = [
      \'coc-prettier',
      \'coc-tsserver',
      \'coc-emmet',
      \'coc-markdownlint',
      \'coc-highlight',
      \'coc-vetur',
      \'coc-go',
      \'coc-python',
      \'coc-explorer',
      \'coc-flutter', 
      \'coc-json', 
      \'coc-git'
      \]


"https://github.com/weirongxu/coc-explorer
"<space>e open explore
:nmap <space>e :CocCommand explorer<CR>

" To enable highlight current symbol on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for refactor current function or other (add by bigzhu)
nmap <leader>rf <Plug>(coc-refactor)

" find next error
nmap <leader>fn <Plug>(coc-diagnostic-next)
" find prev error
nmap <leader>fp <Plug>(coc-diagnostic-prev)
