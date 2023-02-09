local present, lualine = pcall(require, "lualine")
if (not present) then return end

return function()
  lualine.setup({
    options = {
      theme = "auto"
    }
  })
end
