local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup{
	-- ensure_installed = "maintained",
	-- sync_install = false,
	-- ignore_install = { "" },
	-- highlight = {
	-- 	enable = true,
	-- 	disable = { "" },
	-- 	additional_vim_regex_highlighting = true,
	-- },
	-- indent = {enable = true, disable = {"yaml"}},
	-- rainbow = {
	-- 	enable = true,
	-- 	extended_mode = true,
	-- 	max_file_lines = nil,
	-- }
}
require'nvim-treesitter.configs'.setup{
	refactor = {
		smart_rename = {
			enable = true,
			keymaps = {
				smart_rename = "grr",
			},
		},
	},
}
function ContextSetup(show_all_context)
    require("treesitter-context").setup({
        enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
        throttle = true, -- Throttles plugin updates (may improve performance)
        max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
        show_all_context = show_all_context,
        patterns = { -- Match patterns for TS nodes. These get wrapped to match at word boundaries.
            -- For all filetypes
            -- Note that setting an entry here replaces all other patterns for this entry.
            -- By setting the 'default' entry below, you can control which nodes you want to
            -- appear in the context window.
            default = {
                "function",
                "method",
                "for",
                "while",
                "if",
                "switch",
                "case",
            },

            rust = {
                "loop_expression",
                "impl_item",
            },

            typescript = {
                "class_declaration",
                "abstract_class_declaration",
                "else_clause",
            },
        },
    })
end

NnoremapGlobal("<leader>cf", "<cmd>lua ContextSetup(true)<CR>")
NnoremapGlobal("<leader>cp", "<cmd>lua ContextSetup(false)<CR>")

