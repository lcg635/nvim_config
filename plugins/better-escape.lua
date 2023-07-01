return {
    "max397574/better-escape.nvim",
    opts = function(_, opts)
        -- keymap to escape terminal mode
        opts.keys = "<Esc>:Format<CR>:w<CR>"
        return opts
    end
}
