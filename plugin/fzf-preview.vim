let g:fzf_preview_filelist_command = 'rg --files --ignore-vcs --hidden --column --line-number --no-heading --smart-case --follow --glob "!.git/*"'
let g:fzf_preview_floating_window_winblend = 0

function! s:buffers_delete_from_paths(paths) abort
  for path in a:paths
    execute 'Bdelete ' . path
  endfor
endfunction

let g:fzf_preview_buffer_delete_processors = fzf_preview#resource_processor#get_default_processors()
let g:fzf_preview_buffer_delete_processors['ctrl-d'] = function('s:buffers_delete_from_paths')

nmap <silent> <C-space> :<C-u>FzfPreviewBuffers -processors=g:fzf_preview_buffer_delete_processors<CR>
nmap <silent> <C-p> :<C-u>FzfPreviewProjectFiles<CR>
nmap <silent> <Leader>j :<C-u>FzfPreviewBufferTags<CR>
nmap <silent> <Leader>b :<C-u>FzfPreviewMarks<CR>
nmap <silent> <C-f> :<C-u>FzfPreviewProjectGrep <C-R><C-W><CR>

nmap <Leader>f [fzf-p]
xmap <Leader>f [fzf-p]

nnoremap <silent> [fzf-p]p     :<C-u>FzfPreviewFromResources project_mru git<CR>
nnoremap <silent> [fzf-p]gs    :<C-u>FzfPreviewGitStatus<CR>
nnoremap <silent> [fzf-p]b     :<C-u>FzfPreviewBuffers<CR>
nnoremap <silent> [fzf-p]B     :<C-u>FzfPreviewAllBuffers<CR>
nnoremap <silent> [fzf-p]o     :<C-u>FzfPreviewFromResources buffer project_mru<CR>
nnoremap <silent> [fzf-p]<C-o> :<C-u>FzfPreviewJumps<CR>
nnoremap <silent> [fzf-p]g;    :<C-u>FzfPreviewChanges<CR>
nnoremap <silent> [fzf-p]/     :<C-u>FzfPreviewLines -add-fzf-arg=--no-sort -add-fzf-arg=--query="'"<CR>
nnoremap <silent> [fzf-p]*     :<C-u>FzfPreviewLines -add-fzf-arg=--no-sort -add-fzf-arg=--query="'<C-r>=expand('<cword>')<CR>"<CR>
nnoremap          [fzf-p]gr    :<C-u>FzfPreviewProjectGrep<Space>
xnoremap          [fzf-p]gr    "sy:FzfPreviewProjectGrep<Space>-F<Space>"<C-r>=substitute(substitute(@s, '\n', '', 'g'), '/', '\\/', 'g')<CR>"
nnoremap <silent> [fzf-p]t     :<C-u>FzfPreviewBufferTags<CR>
nnoremap <silent> [fzf-p]q     :<C-u>FzfPreviewQuickFix<CR>
nnoremap <silent> [fzf-p]l     :<C-u>FzfPreviewLocationList<CR>
