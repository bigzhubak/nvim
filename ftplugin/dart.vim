noremap <buffer> <f1> :CocCommand flutter.dev.openDevLog<cr>
"change the emulator dev name by real
noremap <buffer> <f3> :silent !emulator @Pixel_2_API_28 > ~/emulator.log &<cr> 
noremap <buffer> <f4> :CocCommand flutter.run<cr>
noremap <buffer> <f5> :CocCommand flutter.dev.hotRestart<cr>
noremap <buffer> <f9> :CocCommand flutter.dev.detach<cr>
let g:dart_format_on_save = 1
autocmd BufRead,BufNewFile,BufEnter *.dart UltiSnipsAddFiletypes dart-flutter


let g:loaded_netrw = 1

function! AuCocNvimInit()
    if @% == '' || @% == '.'
      exe ':CocCommand explorer'
    endif
endfunction
autocmd User CocNvimInit call AuCocNvimInit()
