local M = {}

M.setup = function()
  require("configs.opts")
  require("core.plugins")

  local colorscheme = require("core.options").colorscheme

  if not colorscheme then
    colorscheme = "habamax"
  end

  vim.api.nvim_command("colorscheme " .. colorscheme)

end

return M
