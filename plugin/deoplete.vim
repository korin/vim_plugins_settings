"let g:deoplete#enable_at_startup = 1
"let g:deoplete#max_abbr_width = 0
"let g:deoplete#max_menu_width = 0
"let g:deoplete#max_list = 8

"" imap <expr><TAB>
"" 	 \ neosnippet#expandable_or_jumpable() ?
"" 	 \    "\<Plug>(neosnippet_expand_or_jump)" :
"" 	 \    pumvisible() ? "\<C-n>" : "\<TAB>"

"inoremap <silent><expr> <S-TAB>
"      \ pumvisible() ? "\<C-p>" :
"      \ <SID>check_back_space() ? "\<S-TAB>" :
"      \ deoplete#mappings#manual_complete()

"inoremap <silent><expr> <TAB>
"      \ pumvisible() ? "\<C-n>" :
"      \ <SID>check_back_space() ? "\<TAB>" :
"      \ deoplete#mappings#manual_complete()

"inoremap <silent><expr> <C-Space>
"      \ deoplete#mappings#manual_complete()

"function! s:check_back_space() abort "{{{
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~ '\s'
"endfunction "}}}

"inoremap <expr><C-h>
"\ deoplete#smart_close_popup()."\<C-h>"
"inoremap <expr><BS>
"\ deoplete#smart_close_popup()."\<C-h>"

"" Plugin key-mappings.
"" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <C-k>     <Plug>(neosnippet_expand_or_jump)
"smap <C-k>     <Plug>(neosnippet_expand_or_jump)
"xmap <C-k>     <Plug>(neosnippet_expand_target)

"" SuperTab like snippets behavior.
"" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
""imap <expr><TAB>
"" \ pumvisible() ? "\<C-n>" :
"" \ neosnippet#expandable_or_jumpable() ?
"" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
"" smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"" \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

"" For conceal markers.
"if has('conceal')
"  set conceallevel=2 concealcursor=niv
"endif
