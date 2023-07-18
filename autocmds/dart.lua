vim.api.nvim_create_autocmd("Filetype", {
    pattern = "dart",
    callback = function()
        vim.o.tabstop = 2
        vim.o.shiftwidth = 2
        vim.o.softtabstop = 2

        vim.keymap.set("n", "<leader>lb",
                       ":lua require('telescope').extensions.flutter.commands()<cr>",
                       {desc = "Flutter commands"})
    end
})
