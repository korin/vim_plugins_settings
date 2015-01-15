" json prettifier

if !exists("g:pettify_json_command")
    let g:pettify_json_command = "python -m json.tool"
endif

function! PrettifyJSON()
  silent !clear
  execute "%!" . g:pettify_json_command . " " . bufname("%")
endfunction


" noremap <silent> <C-S-J>  :call PrettifyJSON()<CR>
