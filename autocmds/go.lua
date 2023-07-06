vim.api.nvim_create_autocmd("Filetype", {
    pattern = "go",
    callback = function()
        vim.cmd("iabbrev ,v <space>:=")
        -- map
        vim.cmd("nnoremap <leader>lt :GoTagAdd ")

        local dap = require("dap")
        dap.adapters.go = {
            type = "server",
            port = "${port}",
            executable = {
                command = "dlv",
                args = {"dap", "-l", "127.0.0.1:${port}"}
            },
            options = {initialize_timeout_sec = 20}
        }
    end
})
