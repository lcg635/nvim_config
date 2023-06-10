return {
  {
    "gelguy/wilder.nvim",
    event = "VeryLazy",
    config = function()
      local wilder = require("wilder")
      wilder.setup({
        modes = { ':', '/', '?' },
        enable_cmdline_enter = 0,
      })
      wilder.set_option('pipeline', {
        wilder.branch(
          wilder.cmdline_pipeline({
            language = 'vim',
            fuzzy = 1,
          })
        ),
      })
      wilder.set_option('renderer', wilder.popupmenu_renderer(
        wilder.popupmenu_border_theme({
          highlights = {
            border = 'Normal', -- highlight to use for the border
          },
          border = 'rounded',
          highlighter = wilder.basic_highlighter(),
        })
      ))
    end
  },
  {
    "Pocco81/auto-save.nvim",
    event = "VeryLazy",
    config = function()
      require("auto-save").setup {
        debounce_delay = 1000,
      }
    end,
  },
  {
    "google/executor.nvim",
    event = "VeryLazy",
    depends = { "MunifTanjim/nui.nvim" },
    config = function()
      require("executor").setup({
        preset_commands = {
          ["/home/lcg"] = { "make restart" }
        },
      })
    end,
  }
}
