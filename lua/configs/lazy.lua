local M = {
  defaults = {
    lazy = true,
    version = false,
  },
  install = {
    missing = true,
    colorscheme = { "catppuccin", "tokyonight", "habamax" },
  },
  performance = {
    rtp = {
      disabled_plugins = {
	"gzip", -- Disabling some gzip file stuff.
	"netrwPlugin", -- Disabling netrwPlugin
	"tarPlugin", -- Disable tars stuff
	"tohtml", -- Disable toHTML.
	"tutor", -- Disable the tutor.
	"zipPlugin", -- Disable the zip Plugin
      },
    },
  },
}

return M
