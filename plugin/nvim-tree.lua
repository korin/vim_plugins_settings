require('nvim-tree').setup {
  disable_netrw       = true,
  hijack_netrw        = true,
  update_focused_file = {
    enable            = true
  },
  view = {
    width = 80,
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

local function open_nvim_tree(data)
  -- buffer is a directory
  local directory = vim.fn.isdirectory(data.file) == 1
  -- buffer is a real file on the disk
  local real_file = vim.fn.filereadable(data.file) == 1
  -- buffer is a [No Name]
  local no_name = data.file == "" and vim.bo[data.buf].buftype == ""

  if not directory and not real_file and not no_name then
    return
  end

  if directory then
    -- change to the directory
    vim.cmd.cd(data.file)
  end

  if not real_file then
    -- open the tree
    require("nvim-tree.api").tree.open()
  end
end
vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
