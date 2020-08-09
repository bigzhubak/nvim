"call vista#sidebar#Open() 
"sleep 100m
"execute t:vista.source.get_winnr().'wincmd w'
"auto open explorer
exe ':CocCommand explorer --no-toggle --no-focus'
