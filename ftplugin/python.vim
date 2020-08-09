"auto open explorer
exe ':CocCommand explorer --no-toggle --no-focus'
"auto open asyncrun quickfix
let g:asyncrun_open=6
"禁止python缓存
let $PYTHONNUNBUFFERED=1
map <buffer> <f1> i#!/usr/bin/env python3<cr># -*- coding: utf-8 -*-<cr><cr>if __name__ == '__main__':<cr>import doctest<cr>doctest.testmod(verbose=False, optionflags=doctest.ELLIPSIS)<Esc>
map <buffer> <f4> :AsyncRun -mode=term -pos=tab -raw python %<cr>
"插入生成代码的相关信息
inoremap <buffer> <f5> create by bigzhu at <c-r>=strftime("%y/%m/%d %H:%M:%S")<cr> 
inoremap <buffer> <f6> modify by bigzhu at <c-r>=strftime("%y/%m/%d %H:%M:%S")<cr> 
