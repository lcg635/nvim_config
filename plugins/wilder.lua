return {
    "gelguy/wilder.nvim",
    event = "VeryLazy",
    config = function()
        local wilder = require("wilder")
        wilder.setup({modes = {':', '/', '?'}, enable_cmdline_enter = 0})
        wilder.set_option('pipeline', {
            wilder.branch(wilder.cmdline_pipeline({language = 'vim', fuzzy = 1}))
        })
        wilder.set_option('renderer',
                          wilder.popupmenu_renderer(
                              wilder.popupmenu_border_theme({
                highlights = {
                    border = 'Normal' -- highlight to use for the border
                },
                border = 'rounded',
                highlighter = wilder.basic_highlighter()
            })))
    end
}
