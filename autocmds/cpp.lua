vim.api.nvim_create_autocmd("Filetype", {
    pattern = {"c", "cpp"},
    callback = function()
        vim.o.tabstop = 2
        vim.o.shiftwidth = 2
        vim.o.softtabstop = 2
    end
})
