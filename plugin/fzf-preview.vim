" nnoremap <silent> <Leader>p :<C-u>FzfPreviewProjectFiles<CR>
" nnoremap <silent> <Leader>b :<C-u>FzfPreviewBuffers<CR>
" nnoremap <silent> <Leader>m :<C-u>FzfPreviewProjectOldFiles<CR>
" nnoremap <silent> <Leader>M :<C-u>FzfPreviewOldFiles<CR>

let g:fzf_preview_filelist_command = 'rg --files --ignore-vcs --hidden --column --line-number --no-heading --smart-case --follow --glob "!.git/*"'

function! s:buffers_delete_from_paths(paths) abort
  for path in a:paths
    execute 'Bdelete! ' . path
  endfor
endfunction

let g:fzf_preview_buffer_delete_processors = fzf_preview#resource_processor#get_default_processors()
let g:fzf_preview_buffer_delete_processors['ctrl-d'] = function('s:buffers_delete_from_paths')

nmap <silent> <C-space> :<C-u>FzfPreviewBuffers -processors=g:fzf_preview_buffer_delete_processors<CR>
nmap <silent> <C-p> :<C-u>FzfPreviewProjectFiles<CR>
nmap <silent> <Leader>j :<C-u>FzfPreviewBufferTags<CR>
nmap <silent> <Leader>b :<C-u>FzfPreviewBookmarks<CR>
nmap <silent> <C-f> :<C-u>FzfPreviewProjectGrep <C-R><C-W><CR>
