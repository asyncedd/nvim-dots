local M = {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		config = function()
			require("configs.plugins.catppuccin")
		end,
	}
}

return M
