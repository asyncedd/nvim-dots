local config = {}

function config.nvim_treesitter()
  vim.api.nvim_set_option_value("foldmethod", "expr", {})
  vim.api.nvim_set_option_value("foldexpr", "nvim_treesitter#foldexpr()", {})

  require("nvim-treesitter.configs").setup({
    ensure_installed = {
      "lua",
      "bash",
      "markdown",
      "markdown_inline",
      "rust",
      "html",
      "javascript",
      "typescript",
      "vue",
      "css",
      "latex",
    },
    highlight = {
      enable = true,
    },
    textobjects = {
      select = {
	enable = true,
	keymaps = {
	  ["af"] = "@function.outer",
	  ["if"] = "@function.inner",
	  ["ac"] = "@class.outer",
	  ["ic"] = "@class.inner",
	},
      },
      move = {
	enable = true,
	set_jumps = true, -- whether to set jumps in the jumplist
	goto_next_start = {
	  ["]["] = "@function.outer",
	  ["]m"] = "@class.outer",
	},
	goto_next_end = {
	  ["]]"] = "@function.outer",
	  ["]M"] = "@class.outer",
	},
	goto_previous_start = {
	  ["[["] = "@function.outer",
	  ["[m"] = "@class.outer",
	},
	goto_previous_end = {
	  ["[]"] = "@function.outer",
	  ["[M"] = "@class.outer",
	},
      },
    },
    rainbow = {
      enable = true,
      extended_mode = true,
      max_file_lines = 2000,
    },
    context_commentstring = {
      enable = true,
      enable_autocmd = false,
    },
    matchup = {
      enable = true,
    },
  })
end

function config.nvim_colorizer()
  require("colorizer").setup()
end

function config.autotag()
  require("nvim-ts-autotag").setup({
    filetypes = {
      "html",
      "xml",
      "javascript",
      "typescriptreact",
      "javascriptreact",
      "vue",
    },
  })
end

function config.nvim_colorizer()
  require("colorizer").setup()
end

function config.tabout()
  require("tabout").setup({
    tabkey = "", -- key to trigger tabout, set to an empty string to disable
    backwards_tabkey = "", -- key to trigger backwards tabout, set to an empty string to disable
    act_as_tab = true, -- shift content if tab out is not possible
    act_as_shift_tab = false, -- reverse shift content if tab out is not possible (if your keyboard/terminal supports <S-Tab>)
    enable_backwards = true,
    completion = true, -- if the tabkey is used in a completion pum
    tabouts = {
      { open = "'", close = "'" },
      { open = '"', close = '"' },
      { open = "`", close = "`" },
      { open = "(", close = ")" },
      { open = "[", close = "]" },
      { open = "{", close = "}" },
    },
    ignore_beginning = true, -- if the cursor is at the beginning of a filled element it will rather tab out than shift the content
    exclude = {}, -- tabout will ignore these filetypes
  })
end

function config.autopairs()
  require("nvim-autopairs").setup()
end

function config.comment()
  require("Comment").setup()
end

return config
