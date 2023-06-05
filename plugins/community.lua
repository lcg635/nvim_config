return {
    "AstroNvim/astrocommunity",
    { import = "astrocommunity/colorscheme/kanagawa-nvim" },
    { import = "astrocommunity/colorscheme/rose-pine" },
    { import = "astrocommunity/colorscheme/nvim-juliana" },
    { import = "astrocommunity/colorscheme/onedarkpro-nvim" },
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
    { import = "astrocommunity/motion/hop-nvim" },
    { import = "astrocommunity/editing-support/zen-mode-nvim" },
    {
        "zen-mode.nvim",
        opts =  {
            window = {
                options = {
                    number = true
                }
            }
        }
    },
    { import = "astrocommunity/pack/go" },
    { import = "astrocommunity/pack/typescript" },
    { import = "astrocommunity/pack/docker" },
    { import = "astrocommunity/project/nvim-spectre" },
    {
        "nvim-pack/nvim-spectre",
        opts = {
            open_cmd = "70vnew"
        }
    },
    -- { import = "astrocommunity/project/project-nvim" },
    -- {
    --     "project.nvim",
    --     opts = {
    --         patterns = { ".git", ".svn", "package.json" },
    --         detection_methods = { "pattern" },
    --     }
    -- },
    -- { import = "astrocommunity/motion/nvim-surround" },
    -- { import = "astrocommunity/motion/nvim-spider" },
    { import = "astrocommunity/editing-support/todo-comments-nvim" },
    { import = "astrocommunity/note-taking/neorg" },
    { import = "astrocommunity/code-runner/overseer-nvim" },
    { import = "astrocommunity/scrolling/satellite-nvim" },
}
