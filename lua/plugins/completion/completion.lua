local M = {
	{
		"L3MON4D3/LuaSnip",
		event = "VeryLazy"
	},
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"saadparwaiz1/cmp_luasnip",
			"ray-x/cmp-treesitter",
			"hrsh7th/cmp-nvim-lua",
			"onsails/lspkind.nvim",
		},
		event = "VeryLazy",
		config = function()
			require("configs.plugins.completion")
		end
	}
}

return M
