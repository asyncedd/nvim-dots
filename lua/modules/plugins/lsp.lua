local lsp = {}

local conf = require("modules.configs.lsp")

lsp["neovim/nvim-lspconfig"] = {
  event = { "BufReadPost", "BufAdd", "BufNewFile" },
}

return lsp
