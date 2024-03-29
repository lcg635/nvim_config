return {
    "AstroNvim/astrocommunity",
    {import = "astrocommunity/colorscheme/kanagawa-nvim"},
    {import = "astrocommunity/colorscheme/rose-pine"},
    {import = "astrocommunity/colorscheme/nvim-juliana"},
    {import = "astrocommunity/colorscheme/onedarkpro-nvim"},
    {import = "astrocommunity/completion/copilot-lua"}, {
        "copilot.lua",
        opts = {
            suggestion = {
                keymap = {
                    accept = "<C-l>",
                    accept_word = false,
                    accept_line = false,
                    next = "<C-.>",
                    prev = "<C-,>",
                    dismiss = "<C/>"
                }
            }
        }
    }, {import = "astrocommunity/motion/hop-nvim"}, {
        "phaazon/hop.nvim",
        keys = {
            {
                "s",
                function() require("hop").hint_words() end,
                mode = {"n"},
                desc = "Hop hint words"
            }, {
                "<S-s>",
                function() require("hop").hint_char1() end,
                mode = {"n"},
                desc = "Hop hint char1"
            }, {
                "s",
                function()
                    require("hop").hint_words {extend_visual = true}
                end,
                mode = {"v"},
                desc = "Hop hint words"
            }, {
                "<S-s>",
                function()
                    require("hop").hint_char1 {extend_visual = true}
                end,
                mode = {"v"},
                desc = "Hop hint char1"
            }
        }
    }, -- {import = "astrocommunity/pack/go"},
    {import = "astrocommunity/pack/docker"},
    {import = "astrocommunity/pack/rust"}, {import = "astrocommunity/pack/cpp"},
    {import = "astrocommunity/pack/python"},
    {import = "astrocommunity/pack/dart"},
    {import = "astrocommunity/project/project-nvim"},
    {import = "astrocommunity/project/nvim-spectre"},
    {"nvim-pack/nvim-spectre", opts = {open_cmd = "70vnew"}},
    {import = "astrocommunity/editing-support/todo-comments-nvim"},
    {import = "astrocommunity/motion/nvim-surround"}, {
        "nvim-treesitter/nvim-treesitter",
        opts = function(_, opts)
            if opts.ensure_installed ~= "all" then
                local utils = require "astronvim.utils"
                opts.ensure_installed = utils.list_insert_unique(
                                            opts.ensure_installed, "make")
            end
        end
    }, {import = "astrocommunity/scrolling/neoscroll-nvim"},
    {import = "astrocommunity/pack/full-dadbod"}, {
        "kristijanhusak/vim-dadbod-ui",
        config = function()
            vim.g.db_ui_win_position = "right"
            vim.g.Db_ui_buffer_name_generator = function(_)
                -- get time string
                local time = os.date("%Y-%m-%d-%H-%M-%S", os.time())
                return time .. ".sql"
            end
            vim.g.db_ui_table_helpers = {
                mysql = {
                    List = "SELECT * FROM `{table}` LIMIT 10",
                    Truncate = "TRUNCATE TABLE `{table}`"
                }
            }
        end
    }, {import = "astrocommunity/bars-and-lines/smartcolumn-nvim"},
    {"m4xshen/smartcolumn.nvim", opts = {colorcolumn = 100}},
    {import = "astrocommunity/completion/cmp-cmdline"}
}
