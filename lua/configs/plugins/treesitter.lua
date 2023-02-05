local present, treesitter = pcall(require, "nvim-treesitter.configs")
if not present then return end

treesitter.setup({
	ensure_installed= { "lua", "vim", "help" },
	auto_install = true,
	highlight = {
		enable = true,
		use_languagetree = true,
	},
	rainbow = {
		enable = true,
	},
	-- indent = {
	-- 	enable = true,
	-- },
	-- autotag = {
	-- 	enable = true,
	-- }
})
