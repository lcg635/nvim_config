return {
  -- themes
  "rebelot/kanagawa.nvim",
  "EdenEast/nightfox.nvim",

  -- motion
  ["ggandor/leap.nvim"] = {
    after = { "nvim-cmp" },
    config = function()
      require('leap').add_default_mappings()
    end
  },

  ["abecodes/tabout.nvim"] = {
    wants = { "nvim-treesitter" },
    after = { "nvim-cmp" },
    config = function()
      require("tabout").setup {}
    end,
  },

  -- note
  ["nvim-neorg/neorg"] = {
    run = ":Neorg sync-parsers", -- This is the important bit!
    -- requires = {
    --   "max397574/neorg-kanban",
    -- },
    config = function()
      require("neorg").setup {
        load = {
          ["core.defaults"] = {},
          ["core.keybinds"] = {
            config = {
              neorg_leader = ","
            }
          },
          ["core.norg.concealer"] = {},
          ["core.norg.completion"] = {
            config = { engine = "nvim-cmp" }
          },
          ["core.norg.dirman"] = {
            config = {
              workspaces = {
                work = "~/notes/work",
                home = "~/notes/home",
              }
            }
          },
          -- ["core.gtd.base"] = {
          --   config = {
          --     workspace = "home",
          --   }
          -- },
          -- ["external.kanban"] = {},
        },
      }
    end,
  }
}
