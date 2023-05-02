return {
    "AstroNvim/astrocommunity",
    { import = "astrocommunity/colorscheme/kanagawa" },
    { import = "astrocommunity/colorscheme/rose-pine" },
    { import = "astrocommunity/colorscheme/gruvbox" },
    { import = "astrocommunity/completion/copilot-lua" },
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
    {
        "nvim-pack/nvim-spectre",
        opts = {
            open_cmd = "70vnew"
        }
    },
    { import = "astrocommunity/project/project-nvim" },
    {
        "project.nvim",
        opts = {
            patterns = { ".git", ".svn", "package.json" },
            detection_methods = { "pattern" },
        }
    },
    { import = "astrocommunity/motion/nvim-surround" },
    { import = "astrocommunity/editing-support/todo-comments-nvim" },
    { import = "astrocommunity/note-taking/neorg" },
    { import = "astrocommunity/code-runner/overseer-nvim" },
    -- { import = "astrocommunity/utility/noice-nvim" },
    -- {
    --     "folke/noice.nvim",
    --     opts = {
    --         views = {
    --             cmdline_popup = {
    --                 position = {
    --                     row = "30%",
    --                     col = "50%",
    --                 },
    --                 size = {
    --                     width = 60,
    --                     height = "auto",
    --                 },
    --             },
    --             popupmenu = {
    --                 relative = "editor",
    --                 position = {
    --                     row = "43%",
    --                     col = "50%",
    --                 },
    --                 size = {
    --                     width = 60,
    --                     height = 10,
    --                 },
    --             }
    --         },
    --     }
    -- }
}
