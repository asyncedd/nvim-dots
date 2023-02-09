return function()
  require("bufferline").setup({
    options = {
      hover = {
	      enabled = true,
	      reveal = { "close" },
      },
      offsets = {
	      {
		      filetype = "NvimTree",
		      text = "File Explorer",
		      text_align = "center",
		      seperator = true
	      }
      }
    }
  })
end
