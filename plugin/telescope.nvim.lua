local actions = require('telescope.actions')

require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      }
    },
    prompt_prefix = "> ",
    selection_caret = "> ",
    entry_prefix = "  ",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "descending",
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = {
        mirror = false,
      },
      vertical = {
        mirror = false,
      },
      preview_cutoff = 200,
      preview_width  = 0.5,
      prompt_position = "bottom",
      height = 0.98,
      width = 0.98,
    },
    file_ignore_patterns = {".git/*", "node_modules", "vendor"},
    winblend = 0,
    border = {},
    borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
    color_devicons = true,
    use_less = true,
    set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
    file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
    grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
    qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,

    -- Developer configurations: Not meant for general override
    buffer_previewer_maker = require'telescope.previewers'.buffer_previewer_maker,
    extensions = {
      fzf = {
        fuzzy = true,                    -- false will only do exact matching
        override_generic_sorter = true,  -- override the generic sorter
        override_file_sorter = true,     -- override the file sorter
        case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                         -- the default case_mode is "smart_case"
      }
    }
  }
}

-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require('telescope').load_extension('fzf')

-- local ivy_theme = require('telescope.themes').get_ivy()
-- ivy_theme['find_command'] = opts.find_command
-- ivy_theme['layout_config']['height'] = 0.5
--
-- vim.api.nvim_set_keymap('n', '<C-p>', ':lua require('telescope.builtin').find_files(ivy_theme)<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap(
--   "n",
--   "<space>fb",
--   ":Telescope file_browser",
--   { noremap = true }
-- )

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<C-f>', builtin.live_grep, {})
vim.keymap.set('n', '<C-Space>', builtin.buffers, {})

-- nnoremap <C-p>      <cmd>lua require('telescope.builtin').find_files({ debounce = 100 } )<cr>
-- nnoremap <C-f>      <cmd>lua require('telescope.builtin').live_grep()<cr>
-- nnoremap <C-space>  <cmd>lua require('telescope.builtin').buffers()<cr>
-- nnoremap <Leader>j  <cmd>lua require('telescope.builtin').current_buffer_tags()<cr>
-- nnoremap <Leader>b  <cmd>lua require('telescope.builtin').marks()<cr>
