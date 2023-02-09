local present, fidget = pcall(require, "fidget")
if (not present) then return end

return function()
  fidget.setup()
end
