function! FloattermStrategy(cmd)
  execute 'FloatermNew ' . a:cmd
endfunction

let g:test#custom_strategies = {'floatterm': function('FloattermStrategy')}

let test#strategy = 'floatterm'

nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

let test#ruby#rspec#executable = 'bin/rspec'
