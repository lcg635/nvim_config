return {
  -- themes
  "EdenEast/nightfox.nvim",
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
      }
    end,
  },
  -- {
  --   "akinsho/flutter-tools.nvim",
  --   requires = 'nvim-lua/plenary.nvim',
  --   after = { "mason-lspconfig.nvim", "nvim-dap" },
  --   config = function()
  --     require("flutter-tools").setup {
  --       widget_guides = {
  --         enabled = true,
  --       },
  --       dev_log = {
  --         enabled = false,
  --         open_cmd = "10 split"
  --       },
  --       debugger = {
  --         enabled = true,
  --         run_via_dap = true,
  --       },
  --       lsp = astronvim.lsp.server_settings "dartls"
  --     }
  --     require("telescope").load_extension("flutter")
  --   end
  -- },
  -- motion
  {
    "ggandor/leap.nvim",
    after = { "nvim-cmp" },
    event = "BufRead",
    config = function()
      require('leap').add_default_mappings()
    end
  },
}
