noremap <buffer> <f1> :CocCommand flutter.dev.openDevLog<cr>
"change the emulator dev name by real
noremap <buffer> <f3> :silent !emulator @Pixel_2_API_28 > ~/emulator.log &<cr> 
noremap <buffer> <f4> :CocCommand flutter.run<cr>
noremap <buffer> <f5> :CocCommand flutter.dev.hotRestart<cr>
noremap <buffer> <f9> :CocCommand flutter.dev.detach<cr>
