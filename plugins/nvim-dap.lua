return {
    {
        "rcarriga/nvim-dap-ui",
        opts = function(_, opts)
            -- local dapui = require "dapui"
            return {
                layouts = {
                    {
                        elements = {
                            {id = "scopes", size = 0.60},
                            {id = "watches", size = 0.20},
                            {id = "breakpoints", size = 0.20}
                            -- {id = "stacks", size = 0.25}
                        },
                        size = 40,
                        position = "left"
                    }, {
                        elements = {"repl", "console"},
                        -- elements = {"repl", "console"},
                        size = 14,
                        position = "bottom"
                    }
                },
                floating = {
                    border = "single",
                    mappings = {close = {"q", "<esc>"}}
                },
                windows = {indent = 1}
            }
            -- return opts
        end
    }
}
