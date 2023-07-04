return {
    {
        "rebelot/heirline.nvim",
        opts = function(_, opts)
            local status = require "astronvim.utils.status"
            opts.statusline[1] = status.component.mode {
                mode_text = {padding = {left = 1, right = 1}}
            }
            opts.statusline[3] = status.component.file_info {
                -- filetype = {},
                filename = {modify = ':.'}
            }
            return opts
        end
    }
}
