local editor = {}
local conf = require("modules.configs.editor")

editor["nvim-treesitter/nvim-treesitter"] = {
  build = ":TSUpdate",
  event = "BufReadPost",
  config = conf.nvim_treesitter,
  dependencies = {
    { "nvim-treesitter/nvim-treesitter-textobjects" },
    { "p00f/nvim-ts-rainbow" },
    { "JoosepAlviste/nvim-ts-context-commentstring" },
    { "mfussenegger/nvim-ts-hint-textobject" },
    { "andymass/vim-matchup" },
    { "windwp/nvim-ts-autotag", config = conf.autotag },
    { "NvChad/nvim-colorizer.lua", config = conf.nvim_colorizer },
    { "abecodes/tabout.nvim", config = conf.tabout },
  }
}

editor["windwp/nvim-autopairs"] = {
  event = "InsertEnter",
  config = conf.autopairs
}

editor["numToStr/Comment.nvim"] = {
  event = "VeryLazy",
  config = conf.comment
}

editor["RRethy/vim-illuminate"] = {
  event = "BufReadPost",
}

return editor
