return {
    "nvim-telescope/telescope.nvim",
    opts = function(_, opts)

    local actions = require "telescope.actions"
        opts.defaults.mappings.i["<esc>"] = require("telescope").esc
        return opts
    end
}
