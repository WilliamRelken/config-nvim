require('telescope').setup({
  defaults = {
    color_devicons = false,
    layout_config = {
      width = 0.7,
      horizontal = {
        preview_width = 0.6
      }
    }
  },
  pickers = {
    ignore_current_buffer = true,
    sort_lastused = true
  }
})
require('telescope').load_extension('fzf')

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.api.nvim_set_keymap("n", "<Leader>pr", ":Telescope oldfiles<CR>", {})
vim.keymap.set('n', '<leader>ps', function ()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
