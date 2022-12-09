return function(config)
    config.layouts = {
        {
            elements = {
                -- Elements can be strings or table with id and size keys.
                { id = "scopes", size = 0.5 },
                "breakpoints",
                "stacks",
                -- "watches",
            },
            size = 40, -- 40 columns
            position = "left",
        },
        {
            elements = {
                "repl",
                -- "console",
            },
            size = 0.25, -- 25% of total lines
            position = "bottom",
        },
    }
    config.controls = {
        -- Requires Neovim nightly (or 0.8 when released)
        enabled = true,
        -- Display controls in this element
        element = "repl",
        icons = {
            pause = "⏸️",
            play = "▶️",
            step_into = "",
            step_over = "",
            step_out = "i",
            step_back = "◀",
            run_last = "",
            terminate = "",
        },
    }

    local dap, dapui, neotree = require "dap", require "dapui", require "neo-tree"

    dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
        vim.cmd "Neotree close"
    end
    dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
        neotree.show()
    end
    dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
        neotree.show()
    end

    return config
end
