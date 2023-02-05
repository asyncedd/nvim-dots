-- Setting LSP servers.
local M = {
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"stylua",
				"shellcheck",
				"shfmt",
				"lua-language-server"
			},
		},
		config = function(plugin, opts)
			require("configs.plugins.mason").setup(plugin, opts)
		end,
		event = "BufReadPre",
	},
	{
		"williamboman/mason-lspconfig.nvim",
		event = "BufReadPre",
		config = function()
			require("configs.plugins.mason-lspconfig")
		end,
	},
	{
		"neovim/nvim-lspconfig",
		event = "BufReadPre",
		dependencies = {
			"hrsh7th/nvim-cmp",
			"j-hui/fidget.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		opts = {
			diagnostics = {
				underline = true,
				update_in_insert = true,
				severity_sort = true,
			},
			autoformat = true,
			format = {
				formatting_options = nil,
				timeout_ms = nil,
			}
		},
		config = function()
			require("configs.plugins.lspconfig")
		end,
	},
	{
		"glepnir/lspsaga.nvim",
		event = "BufReadPost",
		config = function ()
			require("configs.plugins.lspsaga")
		end,
		dependencies = {
			{ "nvim-tree/nvim-web-devicons" }
		}
	}
}

return M
