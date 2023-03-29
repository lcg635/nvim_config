return {
    {
        "rebelot/heirline.nvim",
        opts = function(_, opts)
            local status = require "astronvim.utils.status"
            opts.statusline[3] = status.component.file_info {
                -- filetype = {},
                filename = { modify = ':.' },
            }
            return opts
        end,
    }
}
