local present, masonlspconfig = pcall(require, "mason-lspconfig")
if not present then return end

masonlspconfig.setup {
	ensure_installed = { "sumneko_lua", "rust_analyzer" },
}
