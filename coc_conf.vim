
"coc-vetur for vuejs
let g:coc_global_extensions = [
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
