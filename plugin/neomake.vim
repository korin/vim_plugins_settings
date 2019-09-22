let g:neomake_javascript_eslint_exe = $PWD .'/node_modules/.bin/eslint'
let g:neomake_typescript_enabled_makers = ['tslint']

autocmd BufWritePost,BufEnter * Neomake
" autocmd User NeomakeJobFinished echom printf('%s exited with %d', g:neomake_hook_context.jobinfo.maker.name, g:neomake_hook_context.jobinfo.exit_code)

let g:neomake_error_sign = {
      \ 'text': '✖',
      \ 'texthl': 'NeomakeErrorSign'
      \ }

let g:neomake_warning_sign = {
      \   'text': '⚠',
      \   'texthl': 'NeomakeWarningSign',
      \ }

let g:neomake_message_sign = {
      \   'text': '➤',
      \   'texthl': 'NeomakeMessageSign',
      \ }

let g:neomake_info_sign = {
      \ 'text': 'ℹ',
      \ 'texthl': 'NeomakeInfoSign'
      \ }

