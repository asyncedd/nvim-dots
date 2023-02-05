local present, lspconfig = pcall(require, "lspconfig")
if not present then return end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

require("fidget").setup()

-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
lspconfig["sumneko_lua"].setup {
	capabilities = capabilities,
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" }
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
				checkThirdParty = false,
			},
			completion = {
				callSnippet = "Replace",
			},
			telementry = {
				enable = false
			},
			runtime = {
				version = "LuaJIT",
				path = vim.split(package.path, ";")
			}
		},
	},
}
