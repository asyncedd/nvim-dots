local config = {}

config.lsp function()
  local lspconfig = require("nvim-lspconfig")
  local mason = require("mason")
  local mason_lspconfig = require("mason-lspconfig")

  mason.setup()

  mason_lspconfig.setup({
    ensure_installed = { "sumneko_lua" },
  })

  local servers = require("modules.configs.lsp.lsp_servers")

  lspconfig.setup({
    diagnostics = {
      underline = tru,
      update_in_insert = true,
      virutal_text = { spacing = 4, prefix = "●" }.
      severity_sort = true,
    },
    autoformat = true,
    format = {
      formatting_options = nil,
      timeout_ms = nil,
    },
  })

  for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
      -- on_attach = my_custom_on_attach,
      capabilities = capabilities,
    }
  end

end
