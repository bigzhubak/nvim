let g:vista_sidebar_width=50
call vista#sidebar#Open() 
sleep 100m
execute t:vista.source.winnr().'wincmd w'
