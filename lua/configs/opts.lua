local opts = {
  -- Copy indent from current line when starting a new line
  ai = true,
  -- If a file had been detected to change outside of Neovim, automatically read it.
  ar = true,
  -- Wrapped lines will continue to be visually indented.
  bri = true,
  -- Automatic C indenting. I don't like it though. Uncomment if you want to use it.
  -- cin = true,
  -- The number of screen lines for the CLI. I like it at 2.
  ch = 2,
  -- Mainly for completion.
  cot = "menu,menuone,noselect",
  -- Highlight the text line of the cursor
  cul = true,
  -- Enable the usage of mouse in all files.
  mouse = "a",
  -- Set the the number of spaces for (auto)indent. I like it as 2.
  sw = 2,
  -- Always show the tabline.
  -- stal = 2,
  -- Override the 'ignorecase' option if the search contains upper case characters.
  scs = true,
  -- Do smart autoindenting 🧠
  si = true,
  -- pressin <Tab> in the front of a line iserts blanks, smartly.
  sta = true,
  -- Splitting a window will put the new window below the current one
  sb = true,
  -- Splitting a window will put the new window on the right side of the current one.
  spr = true,
  -- Enable 24-Bit RGB colors in the TUI. Also uses the terminal's colors
  tgc = true,
  -- Enable line wrapping.
  wrap = true,
  -- Enable virtual editting. Just one more. ONE MORE! 🥺 (sorry)
  ve = "onemore",
  -- Enable line numbers.
  number = true,
  -- Show invisible chars
  list = true,
  listchars = "space:⋅,eol:↴"
}

for k, v in pairs(opts) do
  vim.opt[k] = v
end
