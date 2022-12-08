  return function()
    vim.api.nvim_create_autocmd("Filetype", {
      pattern = "go",
      callback = function()
        vim.keymap.set("i", ",v", " := ")
      end
    })

    vim.api.nvim_create_augroup("neotree", {})
    vim.api.nvim_create_autocmd("UiEnter", {
      desc = "Open Neotree automatically",
      group = "neotree",
      callback = function()
        if vim.fn.argc() == 0 then
          vim.cmd("Neotree show")
        end
      end,
    })

end
