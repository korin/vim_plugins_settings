" nnoremap <silent> <Leader>p :<C-u>FzfPreviewProjectFiles<CR>
" nnoremap <silent> <Leader>b :<C-u>FzfPreviewBuffers<CR>
" nnoremap <silent> <Leader>m :<C-u>FzfPreviewProjectOldFiles<CR>
" nnoremap <silent> <Leader>M :<C-u>FzfPreviewOldFiles<CR>

nmap <silent> <C-space> :<C-u>FzfPreviewBuffers<CR>
nmap <silent> <C-p> :<C-u>FzfPreviewProjectFiles<CR>
nmap <silent> <Leader>j :<C-u>FzfPreviewBufferTags<CR>
nmap <silent> <Leader>b :<C-u>FzfPreviewBookmarks<CR>
nmap <silent> <C-f> :<C-u>FzfPreviewProjectGrep <C-R><C-W><CR>

let g:fzf_preview_filelist_command = 'rg --files --ignore-vcs --hidden --column --line-number --no-heading --smart-case --follow --glob "!.git/*"'
