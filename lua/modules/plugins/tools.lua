local tools = {}

tools["nvim-telescope/telescope.nvim"] = {
  cmd = "Telescope",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "nvim-lua/plenary.nvim",
  }
}

return tools
