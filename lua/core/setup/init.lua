local M = {}

M.setup = function()
  require("core.opts")
	require("configs.lazy").setup()
	require("configs.autocmds")
end

return M
