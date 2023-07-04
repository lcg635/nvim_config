vim.api.nvim_create_autocmd("Filetype", {
    pattern = "dart",
    callback = function()
        vim.keymap.set("n", "<leader>lb",
                       ":lua require('telescope').extensions.flutter.commands()<cr>")
        -- require("dap.ext.vscode").load_launchjs()
    end
})
