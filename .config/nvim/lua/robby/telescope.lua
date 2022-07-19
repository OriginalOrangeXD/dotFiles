require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-h>"] = "which_key"
      }
    }
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
      fzy_native = {
          override_generic_sorter = false,
          override_file_sorter = true,
      },
  }
}
require("telescope").load_extension("fzy_native")

vim.api.nvim_set_keymap('n', '<leader>ps', [[<Cmd>lua require("telescope.builtin").grep_string({search = vim.fn.input("Grep For > ")})<CR>]], { silent = true})
vim.api.nvim_set_keymap('n', '<C-p>', [[<Cmd>lua require("telescope.builtin").git_files()<CR>]], { silent = true})
vim.api.nvim_set_keymap('n', '<leader>pf', [[<Cmd>lua require("telescope.builtin").find_files()<CR>]], { silent = true})

