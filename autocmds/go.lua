vim.api.nvim_create_autocmd("Filetype", {
    pattern = "go",
    callback = function()
        vim.cmd("iabbrev ,v <space>:=")
        vim.cmd("iabbrev ,e if err != nil {<cr>return nil<esc>jo")
        -- map
        vim.cmd("nnoremap <leader>lt :GoTagAdd ")
    end
})
