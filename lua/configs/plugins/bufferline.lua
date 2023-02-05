local present, bufferline = pcall(require, "bufferline")
if not present then return end

bufferline.setup {
	options = {
		mode = 'tabs',
		separator_style = "slant",
		hover = {
			enabled = true,
			delay = 200,
			reveal = { "close" },
		},
		always_show_bufferline = true,
		show_buffer_close_icons = true,
		show_close_icon = true,
		color_icons = true,
		offsets = {
			{
				filetype = "NvimTree",
				text = function ()
					return vim.fn.getcwd()
				end,
				highlight = "Directory",
				text_align = "left"
			}
		}
	}
}

vim.api.nvim_set_keymap('n', '<Tab>', "<cmd>BufferLineCycleNext<cr>", {})
vim.api.nvim_set_keymap("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<cr>", {})
