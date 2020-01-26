" Mapping selecting mappings
" nmap <C-f> :call fzf#vim#files('', fzf#vim#with_preview('right:60%'))<CR>
nnoremap <C-f> :Rg <C-R><C-W><CR>
nmap <C-p> :call fzf#vim#files('', fzf#vim#with_preview('right:60%'))<CR>

let g:fzf_history_dir = '~/.local/share/fzf-history'
let g:fzf_layout = { 'window': 'call FloatingFZF()' }

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --ignore-vcs --hidden --column --line-number --no-heading --smart-case --sort path '.shellescape(<q-args>),
  \   1,
  \   fzf#vim#with_preview('right:60%'),
  \   <bang>0)

function! FloatingFZF()
  let height = float2nr(&lines/2)
  let width = &columns
  let row = &lines - height

  let border_opts = {
        \ 'relative': 'editor',
        \ 'row': row,
        \ 'col': 0,
        \ 'width': width,
        \ 'height': height,
        \ 'style': 'minimal'
        \ }

  let top = "╭" . repeat("─", width - 2) . "╮"
  let mid = "│" . repeat(" ", width - 2) . "│"
  let bot = "╰" . repeat("─", width - 2) . "╯"
  let border = [top] + repeat([mid], height - 2) + [bot]

  set winhl=Normal:Normal
  let s:border_buf = nvim_create_buf(v:false, v:true)
  call setbufvar(s:border_buf, 'number', 'no')
  call setbufvar(s:border_buf, 'signcolumn', 'no')
  call nvim_buf_set_lines(s:border_buf, 0, -1, v:true, border)
  let border_win = nvim_open_win(s:border_buf, v:true, border_opts)
  call setwinvar(border_win, '&number', 0)
  call setwinvar(border_win, '&relativenumber', 0)

  let opts = {
        \ 'relative': 'editor',
        \ 'row': row,
        \ 'col': 1 ,
        \ 'width': width - 2,
        \ 'height':height - 2,
        \ }
  let buf = nvim_create_buf(v:false, v:true)
  call setbufvar(buf, 'number', 'no')
  call setbufvar(buf, 'signcolumn', 'no')
  let win =  nvim_open_win(buf, v:true, opts)
  call setwinvar(win, '&number', 0)
  call setwinvar(win, '&relativenumber', 0)
  au BufWipeout <buffer> exe 'bw '.s:border_buf
endfunction
