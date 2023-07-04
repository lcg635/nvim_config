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
    -- { import = "astrocommunity/debugging/nvim-bqf" },
    -- { import = "astrocommunity/diagnostics/trouble-nvim" },
    { import = "astrocommunity/motion/hop-nvim" },
    {
        "phaazon/hop.nvim",
        keys = {
            {
              "s",
              function() require("hop").hint_words() end,
              mode = { "n" },
              desc = "Hop hint words",
            },
            {
              "<S-s>",
              function() require("hop").hint_char1() end,
              mode = { "n" },
              desc = "Hop hint char1",
            },
            {
              "s",
              function() require("hop").hint_words { extend_visual = true } end,
              mode = { "v" },
              desc = "Hop hint words",
            },
            {
              "<S-s>",
              function() require("hop").hint_char1 { extend_visual = true } end,
              mode = { "v" },
              desc = "Hop hint char1",
            },
        },
    },
    { import = "astrocommunity/motion/vim-matchup" },
    -- { import = "astrocommunity.lsp.lsp-inlayhints-nvim" },
    { import = "astrocommunity/pack/go" },
    { import = "astrocommunity/pack/docker" },
    { import = "astrocommunity/pack/rust" },
    { import = "astrocommunity/pack/cpp" },
    { import = "astrocommunity/project/project-nvim" },
    { import = "astrocommunity/project/nvim-spectre" },
    {
        "nvim-pack/nvim-spectre",
        opts = {
            open_cmd = "70vnew"
        }
    },
    -- { import = "astrocommunity/motion/nvim-spider" },
    { import = "astrocommunity/editing-support/todo-comments-nvim" },
    { import = "astrocommunity/motion/nvim-surround" },
    -- { import = "astrocommunity/note-taking/neorg" },
    -- { import = "astrocommunity/code-runner/overseer-nvim" },
    -- {
    --     "stevearc/overseer.nvim",
    --     opts = {
    --         templates = { "cargo", "make", "npm", "vscode" },
    --         template_cache_threshold = 0
    --     }
    -- },
    {
        "nvim-treesitter/nvim-treesitter",
        opts = function(_, opts)
            if opts.ensure_installed ~= "all" then
                local utils = require "astronvim.utils"
                opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed, "make")
            end
        end,
    },
    { import = "astrocommunity/scrolling/neoscroll-nvim" },
}
