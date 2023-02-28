return {
  -- themes
  "rebelot/kanagawa.nvim",
  "EdenEast/nightfox.nvim",
  'AlexvZyl/nordic.nvim',
  -- ["norcalli/nvim-colorizer.lua"] = {
  --   config = function()
  --     require("colorizer").setup()
  --   end
  -- },
  ["akinsho/flutter-tools.nvim"] = {
    requires = 'nvim-lua/plenary.nvim',
    after = { "mason-lspconfig.nvim", "nvim-dap" },
    config = function()
      require("flutter-tools").setup {
        widget_guides = {
          enabled = true,
        },
        dev_log = {
          enabled = false,
          open_cmd = "10 split"
        },
        debugger = {
          enabled = true,
          run_via_dap = true,
        },
        lsp = astronvim.lsp.server_settings "dartls"
      }
      require("telescope").load_extension("flutter")
    end
  },
  ['kevinhwang91/nvim-ufo'] = {
    requires = 'kevinhwang91/promise-async',
    config = function()
      require('ufo').setup({
        provider_selector = function(bufnr, filetype, buftype)
          return { 'treesitter', 'indent' }
        end
      })
    end
  },
  -- motion
  ["ggandor/leap.nvim"] = {
    after = { "nvim-cmp" },
    config = function()
      require('leap').add_default_mappings()
    end
  },
  -- note
  ["nvim-orgmode/orgmode"] = {
    config = function()
      require('orgmode').setup_ts_grammar()
      require('nvim-treesitter.configs').setup {
        -- If TS highlights are not enabled at all, or disabled via `disable` prop,
        -- highlighting will fallback to default Vim syntax highlighting
        highlight = {
          enable = true,
          -- Required for spellcheck, some LaTex highlights and
          -- code block highlights that do not have ts grammar
          additional_vim_regex_highlighting = { 'org' },
        },
        ensure_installed = { 'org' }, -- Or run :TSUpdate org
      }
      require('orgmode').setup({
        org_agenda_files = { '~/notes/**/*' },
        org_default_notes_file = '~/notes/refile.org',
      })
    end
  },
}
