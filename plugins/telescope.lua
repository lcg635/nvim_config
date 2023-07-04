return {
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {"nvim-telescope/telescope-file-browser.nvim"},
        opts = function(_, opts)
            opts.defaults.mappings.i["<esc>"] = require("telescope").esc
            return opts
        end,
        config = function(...)
            require "plugins.configs.telescope"(...)
            local telescope = require "telescope"
            telescope.load_extension "file_browser"
        end
    }, {
        "lpoto/telescope-docker.nvim",
        config = function() require("telescope").load_extension("docker") end
    }
}
