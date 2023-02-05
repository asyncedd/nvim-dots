local M = {
	{
		"akinsho/bufferline.nvim",
		config = function()
			require("configs.plugins.bufferline")
		end,
		event = "VimEnter"
	}
}

return M
