return {
	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup()
		end,
		event = "VeryLazy",
	},
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
		event = "VeryLazy"
	}
}
