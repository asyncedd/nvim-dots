local present, indentscope = pcall(require, "indentscope")

local opts = {
	-- symbol = "▏",
	symbol = "│",
	options = { try_as_border = true },
}

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "help", "alpha", "dashboard", "neo-tree", "Trouble", "lazy", "mason" },
	callback = function()
		vim.b.miniindentscope_disable = true
	end,
})
require("mini.indentscope").setup(opts)
