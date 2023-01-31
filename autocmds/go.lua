
vim.api.nvim_create_autocmd("Filetype", {
  pattern = "go",
  callback = function()
    vim.keymap.set("i", ",v", " := ")
  end
})
