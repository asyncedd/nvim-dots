local present, treesitter = pcall(require, "nvim-treesitter.configs")
if not present then return end

treesitter.setup({
	ensure_installed= { "lua", "vim", "help" },
	auto_install = true,
	highlight = {
		enable = true,
	},
	incremental_selection = {
		enable = true,
	},
	indent = {
		enable = true,
	},
	-- rainbow = {
	-- 	enable = true,
	-- 	extended_mode = true
	-- },
})
