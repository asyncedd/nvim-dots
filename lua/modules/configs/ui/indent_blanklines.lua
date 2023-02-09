local present, indent_blankline = pcall(require, "indent_blankline")
if (not present) then return end

return function()
  indent_blankline.setup({
    char = "│",
    -- filetype_exclude = { "help", "alpha", "dashboard", "neo-tree", "Trouble", "lazy" },
    -- show_trailing_blankline_indent = false,
    -- show_current_context = false,
    -- show_current_context = true,
    -- show_current_context_start = true,
    -- show_end_of_line = true,
    space_char_blankline = " ",
    -- show_trailing_blankline_indent = true,
  })
end
