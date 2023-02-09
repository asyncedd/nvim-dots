local present, noice = pcall(require, "noice")
if (not present) then return end

noice.setup({
  presets = {
    bottom_search = false,
    command_palette = true,
    long_message_to_split = true,
    lsp_doc_border = false
  },
})
