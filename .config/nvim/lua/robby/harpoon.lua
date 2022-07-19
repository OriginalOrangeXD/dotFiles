--UI and mark stuff
vim.api.nvim_set_keymap('n', '<leader>a', [[<Cmd>lua require("harpoon.mark").add_file()<CR>]], { silent = true})
vim.api.nvim_set_keymap('n', '<C-e>', [[<Cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>]], { silent = true})
vim.api.nvim_set_keymap('n', '<leader>tc', [[<Cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>]], { silent = true})

-- Buffer access
vim.api.nvim_set_keymap('n', '<C-h>', [[<Cmd>lua require("harpoon.ui").nav_file(1)<CR>]], { silent = true})
vim.api.nvim_set_keymap('n', '<C-t>', [[<Cmd>lua require("harpoon.ui").nav_file(2)<CR>]], { silent = true})
vim.api.nvim_set_keymap('n', '<C-n>', [[<Cmd>lua require("harpoon.ui").nav_file(3)<CR>]], { silent = true})
vim.api.nvim_set_keymap('n', '<C-s>', [[<Cmd>lua require("harpoon.ui").nav_file(4)<CR>]], { silent = true})

-- Terminal access
vim.api.nvim_set_keymap('n', '<leader>tu', [[<Cmd>lua require("harpoon.term").gotoTerminal(1)<CR>]], { silent = true})
vim.api.nvim_set_keymap('n', '<leader>tu', [[<Cmd>lua require("harpoon.term").gotoTerminal(2)<CR>]], { silent = true})
