" Make nerdtree look nice
let g:NERDTreeBookmarksFile = $HOME ."/.vim/nerdtree_bookmarks" " https://github.com/scrooloose/nerdtree/issues/374
let NERDTreeWinPos = "right"
let NERDTreeWinSize = 50
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeHighlightCursorline = 1
let NERDTreeIgnore=['^bin$', '^tmp$', '^log$', '\.md5\.js$']
nmap <C-\> :NERDTreeFind<CR>
autocmd FileType nerdtree setlocal norelativenumber
