vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

call expand_region#custom_text_objects('ruby', {
      \ 'im' :0,
      \ 'am' :0,
      \ })
