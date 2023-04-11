return {
    "AstroNvim/astrocommunity",
    { import = "astrocommunity.colorscheme.kanagawa" },
    { import = "astrocommunity/colorscheme/rose-pine" },
    { import = "astrocommunity.completion.copilot-lua" },
    {
        "copilot.lua",
        opts = {
            suggestion = {
                keymap = {
                    accept = "<C-l>",
                    accept_word = false,
                    accept_line = false,
                    next = "<C-.>",
                    prev = "<C-,>",
                    dismiss = "<C/>",
                },
            },
        }
    },
    { import = "astrocommunity/debugging/nvim-bqf" },
    { import = "astrocommunity/pack/go" },
    { import = "astrocommunity/pack/typescript" },
    { import = "astrocommunity/project/nvim-spectre" },
    { import = "astrocommunity/editing-support/todo-comments-nvim" }
}

