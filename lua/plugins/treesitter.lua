local M = {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("configs.plugins.treesitter")
	end,
	event = "BufReadPre",
	dependencies = {
	 	{ "p00f/nvim-ts-rainbow", event = "BufReadPre" },
	},
	-- lazy = false
}

return M

