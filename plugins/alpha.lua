return {
    "goolord/alpha-nvim",
    opts = function(_, opts) -- override the options using lazy.nvim
        -- opts.config = require'alpha.themes.startify'.config
        opts.config = require'alpha.themes.theta'.config
        return opts
    end
}
