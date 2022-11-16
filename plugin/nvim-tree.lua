require('nvim-tree').setup {
  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_setup       = false,
  update_focused_file = {
    enable            = true
  },
  view = {
    width = 50,
    side = 'left'
  },
  actions = {
    open_file = {
      quit_on_open = true,
      window_picker = {
        enable = true
      }
    }
  },
  filters = {
    dotfiles = true
  },
  renderer = {
    add_trailing = true,
    group_empty = false
  }
}

vim.api.nvim_set_keymap('n', '<C-\\>', ':NvimTreeFindFile<CR>', { noremap = true, silent = true })
