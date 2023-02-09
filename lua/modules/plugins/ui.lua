local ui = {}
local conf = require("modules.configs.ui")

ui["catppuccin/nvim"] = {
  lazy = false,
  name = "catppuccin",
  config = require("ui.catppuccin")
}

ui["lukas-reineke/indent-blankline.nvim"] = {
  event = "BufReadPost",
  config = require("ui.indent_blanklines"),
}

ui["lewis6991/gitsigns.nvim"] = {
  event = "BufReadPre",
  opts = {
    signs = {
      add = { text = "▎" },
      change = { text = "▎" },
      delete = { text = "契" },
      topdelete = { text = "契" },
      changedelete = { text = "▎" },
      untracked = { text = "▎" },
    },
    on_attach = function(buffer)
      local gs = package.loaded.gitsigns

      local function map(mode, l, r, desc)
	vim.keymap.set(mode, l, r, { buffer = buffer, desc = desc })
      end

      -- stylua: ignore start
      map("n", "]h", gs.next_hunk, "Next Hunk")
      map("n", "[h", gs.prev_hunk, "Prev Hunk")
      map({ "n", "v" }, "<leader>ghs", ":Gitsigns stage_hunk<CR>", "Stage Hunk")
      map({ "n", "v" }, "<leader>ghr", ":Gitsigns reset_hunk<CR>", "Reset Hunk")
      map("n", "<leader>ghS", gs.stage_buffer, "Stage Buffer")
      map("n", "<leader>ghu", gs.undo_stage_hunk, "Undo Stage Hunk")
      map("n", "<leader>ghR", gs.reset_buffer, "Reset Buffer")
      map("n", "<leader>ghp", gs.preview_hunk, "Preview Hunk")
      map("n", "<leader>ghb", function() gs.blame_line({ full = true }) end, "Blame Line")
      map("n", "<leader>ghd", gs.diffthis, "Diff This")
      map("n", "<leader>ghD", function() gs.diffthis("~") end, "Diff This ~")
      map({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>", "GitSigns Select Hunk")
    end,
  },
}

ui["goolord/alpha-nvim"] = {
	lazy = true,
	event = "BufWinEnter",
	config = conf.alpha,
}

ui["dstein64/nvim-scrollview"] = {
  lazy = true,
  event = "BufReadPost",
  config = conf.scrollview,
}

ui["j-hui/fidget.nvim"] = {
  lazy = true,
  event = "BufReadPost",
  config = require("ui.fidget"),
}

ui["echasnovski/mini.animate"] = {
  version = false,
  event = "BufReadPost",
  config = require("ui.animate")
}

ui["nvim-tree/nvim-tree.lua"] = {
  event = "VeryLazy",
  config = conf.nvim_tree,
}

ui["echasnovski/mini.indentscope"] = {
  event = "BufReadPost",
  config = require("ui.indentscope")
}

ui["akinsho/bufferline.nvim"] = {
  config = require("ui.bufferline"),
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  event = "BufReadPost"
}

ui["folke/noice.nvim"] = {
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  config = require("ui.noice"),
  event = "BufReadPost"
}

ui["nvim-lualine/lualine.nvim"] = {
  event = "BufReadPost",
  config = require("ui.lualine")
}

return ui
