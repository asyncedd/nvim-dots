local config = {}

function config.indentscope(_, opts)
  vim.api.nvim_create_autocmd("FileType", {
    pattern = { "help", "alpha", "dashboard", "nvimtree", "neo-tree", "Trouble", "lazy", "mason" },
    callback = function()
      vim.b.miniindentscope_disable = true
    end,
  })
  require("mini.indentscope").setup(opts)
end

function config.catppuccin()
  local transparent_background = false -- Set background transparency here!

  require("catppuccin").setup({
    flavour = "mocha", -- Can be one of: latte, frappe, macchiato, mocha
    background = { light = "latte", dark = "mocha" },
    dim_inactive = {
      enabled = true,
      -- Dim inactive splits/windows/buffers.
      -- NOT recommended if you use old palette (a.k.a., mocha).
      shade = "dark",
      percentage = 0.15,
    },
    transparent_background = transparent_background,
    show_end_of_buffer = false, -- show the '~' characters after the end of buffers
    term_colors = true,
    compile_path = vim.fn.stdpath("cache") .. "/catppuccin",
    styles = {
      comments = { "italic" },
      properties = { "italic" },
      functions = { "italic", "bold" },
      keywords = { "italic" },
      operators = { "bold" },
      conditionals = { "bold" },
      loops = { "bold" },
      booleans = { "bold", "italic" },
      numbers = {},
      types = {},
      strings = {},
      variables = {},
    },
    integrations = {
      treesitter = true,
      native_lsp = {
	enabled = true,
	virtual_text = {
	  errors = { "italic" },
	  hints = { "italic" },
	  warnings = { "italic" },
	  information = { "italic" },
	},
	underlines = {
	  errors = { "underline" },
	  hints = { "underline" },
	  warnings = { "underline" },
	  information = { "underline" },
	},
      },
      aerial = false,
      barbar = false,
      beacon = false,
      cmp = true,
      coc_nvim = false,
      dap = { enabled = true, enable_ui = true },
      dashboard = false,
      fern = false,
      fidget = true,
      gitgutter = false,
      gitsigns = true,
      harpoon = false,
      hop = true,
      illuminate = true,
      indent_blankline = { enabled = true, colored_indent_levels = false },
      leap = false,
      lightspeed = false,
      lsp_saga = true,
      lsp_trouble = true,
      markdown = true,
      mason = true,
      mini = false,
      navic = { enabled = false },
      neogit = false,
      neotest = false,
      neotree = { enabled = false, show_root = true, transparent_panel = false },
      noice = false,
      notify = true,
      nvimtree = true,
      overseer = false,
      pounce = false,
      semantic_tokens = false,
      symbols_outline = false,
      telekasten = false,
      telescope = true,
      treesitter_context = false,
      ts_rainbow = true,
      vim_sneak = false,
      vimwiki = false,
      which_key = true,
    },
    color_overrides = {
      mocha = {
	rosewater = "#F5E0DC",
	flamingo = "#F2CDCD",
	mauve = "#DDB6F2",
	pink = "#F5C2E7",
	red = "#F28FAD",
	maroon = "#E8A2AF",
	peach = "#F8BD96",
	yellow = "#FAE3B0",
	green = "#ABE9B3",
	blue = "#96CDFB",
	sky = "#89DCEB",
	teal = "#B5E8E0",
	lavender = "#C9CBFF",

	text = "#D9E0EE",
	subtext1 = "#BAC2DE",
	subtext0 = "#A6ADC8",
	overlay2 = "#C3BAC6",
	overlay1 = "#988BA2",
	overlay0 = "#6E6C7E",
	surface2 = "#6E6C7E",
	surface1 = "#575268",
	surface0 = "#302D41",

	base = "#1E1E2E",
	mantle = "#1A1826",
	crust = "#161320",
      },
    },
    highlight_overrides = {
      mocha = function(cp)
	return {
	  -- For base configs.
	  NormalFloat = { fg = cp.text, bg = transparent_background and cp.none or cp.base },
	  CursorLineNr = { fg = cp.green },
	  Search = { bg = cp.surface1, fg = cp.pink, style = { "bold" } },
	  IncSearch = { bg = cp.pink, fg = cp.surface1 },
	  Keyword = { fg = cp.pink },
	  Type = { fg = cp.blue },
	  Typedef = { fg = cp.yellow },
	  StorageClass = { fg = cp.red, style = { "italic" } },

	  -- For native lsp configs.
	  DiagnosticVirtualTextError = { bg = cp.none },
	  DiagnosticVirtualTextWarn = { bg = cp.none },
	  DiagnosticVirtualTextInfo = { bg = cp.none },
	  DiagnosticVirtualTextHint = { fg = cp.rosewater, bg = cp.none },

	  DiagnosticHint = { fg = cp.rosewater },
	  LspDiagnosticsDefaultHint = { fg = cp.rosewater },
	  LspDiagnosticsHint = { fg = cp.rosewater },
	  LspDiagnosticsVirtualTextHint = { fg = cp.rosewater },
	  LspDiagnosticsUnderlineHint = { sp = cp.rosewater },

	  -- For fidget.
	  FidgetTask = { bg = cp.none, fg = cp.surface2 },
	  FidgetTitle = { fg = cp.blue, style = { "bold" } },

	  -- For trouble.nvim
	  TroubleNormal = { bg = cp.base },

	  -- For treesitter.
	  ["@field"] = { fg = cp.rosewater },
	  ["@property"] = { fg = cp.yellow },

	  ["@include"] = { fg = cp.teal },
	  -- ["@operator"] = { fg = cp.sky },
	  ["@keyword.operator"] = { fg = cp.sky },
	  ["@punctuation.special"] = { fg = cp.maroon },

	  -- ["@float"] = { fg = cp.peach },
	  -- ["@number"] = { fg = cp.peach },
	  -- ["@boolean"] = { fg = cp.peach },

	  ["@constructor"] = { fg = cp.lavender },
	  -- ["@constant"] = { fg = cp.peach },
	  -- ["@conditional"] = { fg = cp.mauve },
	  -- ["@repeat"] = { fg = cp.mauve },
	  ["@exception"] = { fg = cp.peach },

	  ["@constant.builtin"] = { fg = cp.lavender },
	  -- ["@function.builtin"] = { fg = cp.peach, style = { "italic" } },
	  -- ["@type.builtin"] = { fg = cp.yellow, style = { "italic" } },
	  ["@type.qualifier"] = { link = "@keyword" },
	  ["@variable.builtin"] = { fg = cp.red, style = { "italic" } },

	  -- ["@function"] = { fg = cp.blue },
	  ["@function.macro"] = { fg = cp.red, style = {} },
	  ["@parameter"] = { fg = cp.rosewater },
	  ["@keyword"] = { fg = cp.red, style = { "italic" } },
	  ["@keyword.function"] = { fg = cp.maroon },
	  ["@keyword.return"] = { fg = cp.pink, style = {} },

	  -- ["@text.note"] = { fg = cp.base, bg = cp.blue },
	  -- ["@text.warning"] = { fg = cp.base, bg = cp.yellow },
	  -- ["@text.danger"] = { fg = cp.base, bg = cp.red },
	  -- ["@constant.macro"] = { fg = cp.mauve },

	  -- ["@label"] = { fg = cp.blue },
	  ["@method"] = { fg = cp.blue, style = { "italic" } },
	  ["@namespace"] = { fg = cp.rosewater, style = {} },

	  ["@punctuation.delimiter"] = { fg = cp.teal },
	  ["@punctuation.bracket"] = { fg = cp.overlay2 },
	  -- ["@string"] = { fg = cp.green },
	  -- ["@string.regex"] = { fg = cp.peach },
	  ["@type"] = { fg = cp.yellow },
	  ["@variable"] = { fg = cp.text },
	  ["@tag.attribute"] = { fg = cp.mauve, style = { "italic" } },
	  ["@tag"] = { fg = cp.peach },
	  ["@tag.delimiter"] = { fg = cp.maroon },
	  ["@text"] = { fg = cp.text },

	  -- ["@text.uri"] = { fg = cp.rosewater, style = { "italic", "underline" } },
	  -- ["@text.literal"] = { fg = cp.teal, style = { "italic" } },
	  -- ["@text.reference"] = { fg = cp.lavender, style = { "bold" } },
	  -- ["@text.title"] = { fg = cp.blue, style = { "bold" } },
	  -- ["@text.emphasis"] = { fg = cp.maroon, style = { "italic" } },
	  -- ["@text.strong"] = { fg = cp.maroon, style = { "bold" } },
	  -- ["@string.escape"] = { fg = cp.pink },

	  -- ["@property.toml"] = { fg = cp.blue },
	  -- ["@field.yaml"] = { fg = cp.blue },

	  -- ["@label.json"] = { fg = cp.blue },

	  ["@function.builtin.bash"] = { fg = cp.red, style = { "italic" } },
	  ["@parameter.bash"] = { fg = cp.yellow, style = { "italic" } },

	  ["@field.lua"] = { fg = cp.lavender },
	  ["@constructor.lua"] = { fg = cp.flamingo },

	  ["@constant.java"] = { fg = cp.teal },

	  ["@property.typescript"] = { fg = cp.lavender, style = { "italic" } },
	  -- ["@constructor.typescript"] = { fg = cp.lavender },

	  -- ["@constructor.tsx"] = { fg = cp.lavender },
	  -- ["@tag.attribute.tsx"] = { fg = cp.mauve },

	  ["@type.css"] = { fg = cp.lavender },
	  ["@property.css"] = { fg = cp.yellow, style = { "italic" } },

	  ["@type.builtin.c"] = { fg = cp.yellow, style = {} },

	  ["@property.cpp"] = { fg = cp.text },
	  ["@type.builtin.cpp"] = { fg = cp.yellow, style = {} },

	  -- ["@symbol"] = { fg = cp.flamingo },
	}
      end,
    },
  })
end

function config.alpha()
  local alpha = require("alpha")
  local dashboard = require("alpha.themes.dashboard")

  dashboard.section.header.val = {
    [[????????????   ????????????????????????????????? ????????????????????? ?????????   ??????????????????????????????   ????????????]],
    [[???????????????  ?????????????????????????????????????????????????????????????????????   ????????????????????????????????? ???????????????]],
    [[?????????????????? ???????????????????????????  ?????????   ??????????????????   ???????????????????????????????????????????????????]],
    [[????????????????????????????????????????????????  ?????????   ????????????????????? ??????????????????????????????????????????????????????]],
    [[????????? ????????????????????????????????????????????????????????????????????? ????????????????????? ?????????????????? ????????? ?????????]],
    [[?????????  ??????????????????????????????????????? ?????????????????????   ???????????????  ??????????????????     ?????????]],
  }
  dashboard.section.header.opts.hl = "Type"

  local function button(sc, txt, leader_txt, keybind, keybind_opts)
    local sc_after = sc:gsub("%s", ""):gsub(leader_txt, "<leader>")

    local opts = {
      position = "center",
      shortcut = sc,
      cursor = 5,
      width = 50,
      align_shortcut = "right",
      hl_shortcut = "Keyword",
    }

    if nil == keybind then
      keybind = sc_after
    end
    keybind_opts = vim.F.if_nil(keybind_opts, { noremap = true, silent = true, nowait = true })
    opts.keymap = { "n", sc_after, keybind, keybind_opts }

    local function on_press()
      -- local key = vim.api.nvim_replace_termcodes(keybind .. '<Ignore>', true, false, true)
      local key = vim.api.nvim_replace_termcodes(sc_after .. "<Ignore>", true, false, true)
      vim.api.nvim_feedkeys(key, "t", false)
    end

    return {
      type = "button",
      val = txt,
      on_press = on_press,
      opts = opts,
    }
  end

  local leader = " "
  dashboard.section.buttons.val = {
    button("space f c", "??? Scheme change", leader, "<cmd>Telescope colorscheme<cr>"),
    button("space f r", "??? File frecency", leader, "<cmd>Telescope frecency<cr>"),
    button("space f e", "??? File history", leader, "<cmd>Telescope oldfiles<cr>"),
    button("space f p", "??? Project find", leader, "<cmd>Telescope projects<cr>"),
    button("space f f", "??? File find", leader, "<cmd>Telescope find_files<cr>"),
    button("space f n", "??? File new", leader, "<cmd>enew<cr>"),
    button("space f w", "??? Word find", leader, "<cmd>Telescope live_grep<cr>"),
  }
  dashboard.section.buttons.opts.hl = "String"

  local function footer()
    local stats = require("lazy").stats()
    local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
    return " ???  Have Fun with neovim"
    .. "  ??? v"
    .. vim.version().major
    .. "."
    .. vim.version().minor
    .. "."
    .. vim.version().patch
    .. "  ??? "
    .. stats.count
    .. " plugins in "
    .. ms
    .. "ms"
  end

  dashboard.section.footer.val = footer()
  dashboard.section.footer.opts.hl = "Function"

  local head_butt_padding = 2
  local occu_height = #dashboard.section.header.val + 2 * #dashboard.section.buttons.val + head_butt_padding
  local header_padding = math.max(0, math.ceil((vim.fn.winheight("$") - occu_height) * 0.25))
  local foot_butt_padding = 1

  dashboard.config.layout = {
    { type = "padding", val = header_padding },
    dashboard.section.header,
    { type = "padding", val = head_butt_padding },
    dashboard.section.buttons,
    { type = "padding", val = foot_butt_padding },
    dashboard.section.footer,
  }

  alpha.setup(dashboard.opts)

  vim.api.nvim_create_autocmd("User", {
    pattern = "LazyVimStarted",
    callback = function()
      dashboard.section.footer.val = footer()
      pcall(vim.cmd.AlphaRedraw)
    end,
  })
  -- close Lazy and re-open when the dashboard is ready
  if vim.o.filetype == "lazy" then
    vim.cmd.close()
    vim.api.nvim_create_autocmd("User", {
      pattern = "AlphaReady",
      callback = function()
	require("lazy").show()
      end,
    })
  end

  require("alpha").setup(dashboard.opts)

  vim.api.nvim_create_autocmd("User", {
    pattern = "LazyVimStarted",
    callback = function()
      local stats = require("lazy").stats()
      local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
      dashboard.section.footer.val = "??? Neovim loaded " .. stats.count .. " plugins in " .. ms .. "ms"
      pcall(vim.cmd.AlphaRedraw)
    end,
  })
end

function config.scrollview()
  require("scrollview").setup({})
end

function config.fidget()
  require("fidget").setup({
    window = { blend = 0 },
  })
end

function config.animate()
  require("mini.animate").setup()
end

function config.indent_blankline()
  require("indent_blankline").setup({
    char = "???",
    -- filetype_exclude = { "help", "alpha", "dashboard", "neo-tree", "Trouble", "lazy" },
    -- show_trailing_blankline_indent = false,
    -- show_current_context = false,
    show_current_context = true,
    show_current_context_start = true,
    show_end_of_line = true,
    -- space_char_blankline = " ",
  })
end

function config.nvim_tree()
  local icons = {
    diagnostics = require("modules.utils.icons").get("diagnostics"),
    documents = require("modules.utils.icons").get("documents"),
    git = require("modules.utils.icons").get("git"),
    ui = require("modules.utils.icons").get("ui"),
  }

  require("nvim-tree").setup({
    create_in_closed_folder = false,
    respect_buf_cwd = false,
    auto_reload_on_write = true,
    disable_netrw = false,
    hijack_cursor = true,
    hijack_netrw = true,
    hijack_unnamed_buffer_when_opening = true,
    ignore_buffer_on_setup = false,
    open_on_setup = false,
    open_on_setup_file = false,
    open_on_tab = false,
    sort_by = "name",
    sync_root_with_cwd = true,
    view = {
      adaptive_size = false,
      centralize_selection = false,
      width = 30,
      side = "left",
      preserve_window_proportions = false,
      number = false,
      relativenumber = false,
      signcolumn = "yes",
      hide_root_folder = false,
      float = {
	enable = false,
	open_win_config = {
	  relative = "editor",
	  border = "rounded",
	  width = 30,
	  height = 30,
	  row = 1,
	  col = 1,
	},
      },
    },
    renderer = {
      add_trailing = false,
      group_empty = true,
      highlight_git = false,
      full_name = false,
      highlight_opened_files = "none",
      special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md", "CMakeLists.txt" },
      symlink_destination = true,
      indent_markers = {
	enable = true,
	icons = {
	  corner = "??? ",
	  edge = "??? ",
	  item = "??? ",
	  none = "  ",
	},
      },
      root_folder_label = ":.:s?.*?/..?",
      icons = {
	webdev_colors = true,
	git_placement = "before",
	show = {
	  file = true,
	  folder = true,
	  folder_arrow = false,
	  git = true,
	},
	padding = " ",
	symlink_arrow = " ??? ",
	glyphs = {
	  default = icons.documents.Default, --???
	  symlink = icons.documents.Symlink, --???
	  bookmark = icons.ui.Bookmark,
	  git = {
	    unstaged = icons.git.Mod_alt,
	    staged = icons.git.Add, --???
	    unmerged = icons.git.Unmerged,
	    renamed = icons.git.Rename, --???
	    untracked = icons.git.Untracked, -- "???"
	    deleted = icons.git.Remove, --???
	    ignored = icons.git.Ignore, --???
	  },
	  folder = {
	    -- arrow_open = "???",
	    -- arrow_closed = "???",
	    arrow_open = "",
	    arrow_closed = "",
	    default = icons.ui.Folder,
	    open = icons.ui.FolderOpen,
	    empty = icons.ui.EmptyFolder,
	    empty_open = icons.ui.EmptyFolderOpen,
	    symlink = icons.ui.SymlinkFolder,
	    symlink_open = icons.ui.FolderOpen,
	  },
	},
      },
    },
    hijack_directories = {
      enable = true,
      auto_open = true,
    },
    update_focused_file = {
      enable = true,
      update_root = true,
      ignore_list = {},
    },
    ignore_ft_on_setup = {},
    filters = {
      dotfiles = false,
      custom = { ".DS_Store" },
      exclude = {},
    },
    actions = {
      use_system_clipboard = true,
      change_dir = {
	enable = true,
	global = false,
      },
      open_file = {
	quit_on_open = false,
	resize_window = false,
	window_picker = {
	  enable = true,
	  chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
	  exclude = {
	    filetype = { "notify", "qf", "diff", "fugitive", "fugitiveblame" },
	    buftype = { "terminal", "help" },
	  },
	},
      },
      remove_file = {
	close_window = true,
      },
    },
    diagnostics = {
      enable = false,
      show_on_dirs = false,
      debounce_delay = 50,
      icons = {
	hint = icons.diagnostics.Hint_alt,
	info = icons.diagnostics.Information_alt,
	warning = icons.diagnostics.Warning_alt,
	error = icons.diagnostics.Error_alt,
      },
    },
    filesystem_watchers = {
      enable = true,
      debounce_delay = 50,
    },
    git = {
      enable = true,
      ignore = true,
      show_on_dirs = true,
      timeout = 400,
    },
    trash = {
      cmd = "gio trash",
      require_confirm = true,
    },
    live_filter = {
      prefix = "[FILTER]: ",
      always_show_folders = true,
    },
    log = {
      enable = false,
      truncate = false,
      types = {
	all = false,
	config = false,
	copy_paste = false,
	dev = false,
	diagnostics = false,
	git = false,
	profile = false,
	watcher = false,
      },
    },
  })
end 

return config
