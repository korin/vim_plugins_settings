vim.api.nvim_exec(
[[
let g:nvim_tree_quit_on_open = 1
let g:nvim_tree_ignore = [ '.git', 'node_modules' ]
let g:nvim_tree_add_trailing = 1
let g:nvim_tree_group_empty = 1
let g:nvim_tree_hide_dotfiles = 1
let g:nvim_tree_disable_window_picker = 1
let g:nvim_tree_show_icons = {
    \ 'git': 0,
    \ 'folders': 1,
    \ 'files': 0,
    \ }
]],
true)

require('nvim-tree').setup {
  disable_netrw       = true,
  hijack_netrw        = true,
  auto_close          = true,
  open_on_setup       = false,
  update_focused_file = {
    enable            = true
  },
  view = {
    width = 50,
    side = 'left'
  },
  mappings = {
    custom_only = false,
    list = {}
  }
}

vim.api.nvim_set_keymap('n', '<C-\\>', ':NvimTreeFindFile<CR>', { noremap = true, silent = true })
