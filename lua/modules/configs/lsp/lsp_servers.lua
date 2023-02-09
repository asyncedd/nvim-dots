local lsp_servers = {}

lsp_servers = {
  jsonls = {},
  sumneko_lua = {
    -- mason = false, -- set to false if you don't want this server to be installed with mason
    settings = {
      Lua = {
	workspace = {
	  checkThirdParty = false,
	},
	completion = {
	  callSnippet = "Replace",
	},
      },
    },
  },
}

return lsp_servers
