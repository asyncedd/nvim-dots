local opts =  {
	-- Make indents shorter.
	shiftwidth = 2,
	-- Show line numbers.
	number = true,
	-- Set the 
	termguicolors = true,
	-- Ignore cases whilst searching.
	ignorecase = true,
	-- Enable smart casing.
	smartcase = true,
	-- Split windows to the right.
	splitright = true,
	-- Split windows to the bottom.
	splitbelow = true,
	-- Enable cursorlines. (works better with colorschemes)
	cursorline = true,
	-- Disbale line wrapping.
	wrap = false,
	-- Setting the number of spaces per tabs to 2.
	tabstop = 2,
	-- Show invisible chars.
	-- list = true,
	-- Always show the tabline.
	showtabline = 2,
	-- Smart indents
	smartindent = true,
	-- I like to see a chars in a line.
	linebreak = true,
	-- Making consistant wraps.
	breakindent = true,
	-- Smart wrap indents.
	breakindentopt = "sbr",
	-- Stop redrawing te screen everytime.
	-- lazyredraw = true,
	-- Combine it w/ lazyredraw.
	-- updatetime = 300,
	-- Mainly for cmp
	completeopt = "menu,menuone,noselect",
	-- Filetype specific settigns.
	hidden = true,
	-- SUPER useful.
	virtualedit = "onemore",
	-- List chars.
	listchars = "space:⋅,eol:↴,tab:»⋅",
	-- Some whichkey stuff
	timeout = true,
	timeoutlen = 300,
	-- Auto Indent.
	ai = true,
	-- Smart indent 
	si = true,
	-- Some UI stuff.
	winblend = 0,
	wildoptions = "pum",
	pumblend = 5,
	-- Read the file if it was edited outside Neovim.
	autoread = true,
	-- Allow mouse support in all modes.
	mouse = "a",
	-- Show the result of the search as you type.
	incsearch = true,
	-- Show match
	showmatch = true,
}

for k, v in pairs(opts) do
  vim.opt[k] = v
end

vim.g.mapleader = " "
