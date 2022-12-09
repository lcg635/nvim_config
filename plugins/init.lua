return {
  -- themes
  { "rebelot/kanagawa.nvim" },
  { "EdenEast/nightfox.nvim" },

  -- motion
  { "mg979/vim-visual-multi" },
  {
    "ggandor/leap.nvim",
    after = { "nvim-cmp" },
    config = function ()
      require('leap').add_default_mappings()
    end
  },
  {
    "abecodes/tabout.nvim",
    wants = { "nvim-treesitter" },
    after = { "nvim-cmp" },
    config = function()
      require("tabout").setup {
        tabkey = "<Tab>", -- key to trigger tabout, set to an empty string to disable
        backwards_tabkey = "<S-Tab>", -- key to trigger backwards tabout, set to an empty string to disable
        act_as_tab = true, -- shift content if tab out is not possible
        act_as_shift_tab = false, -- reverse shift content if tab out is not possible (if your keyboard/terminal supports <S-Tab>)
        default_tab = "<C-t>", -- shift default action (only at the beginning of a line, otherwise <TAB> is used)
        default_shift_tab = "<C-d>", -- reverse shift default action,
        enable_backwards = true, -- well ...
        completion = true, -- if the tabkey is used in a completion pum
        tabouts = {
          { open = "'", close = "'" },
          { open = '"', close = '"' },
          { open = "`", close = "`" },
          { open = "(", close = ")" },
          { open = "[", close = "]" },
          { open = "{", close = "}" },
        },
        ignore_beginning = true, --[[ if the cursor is at the beginning of a filled element it will rather tab out than shift the content ]]
        exclude = {}, -- tabout will ignore these filetypes
      }
    end,
  },

  -- note
  {
    'nvim-orgmode/orgmode',
    config = function()
      require('orgmode').setup_ts_grammar()

      require('nvim-treesitter.configs').setup {
        -- If TS highlights are not enabled at all, or disabled via `disable` prop,
        -- highlighting will fallback to default Vim syntax highlighting
        highlight = {
          enable = true,
          -- Required for spellcheck, some LaTex highlights and
          -- code block highlights that do not have ts grammar
          additional_vim_regex_highlighting = {'org'},
        },
        ensure_installed = {'org'}, -- Or run :TSUpdate org
      }

      require('orgmode').setup({
        org_agenda_files = {'~/code/notes/**/*'},
        org_default_notes_file = '~/code/notes/refile.org',
      })
    end
  },

  -- debug
  -- ["mfussenegger/nvim-dap"] = {
  --   opt = true,
  --   event = "BufReadPre",
  --   module = { "dap" },
  --   wants = {
  --     "nvim-dap-virtual-text",
  --     "nvim-dap-ui",
  --     "which-key.nvim",
  --   },
  --   requires = {
  --     "theHamsta/nvim-dap-virtual-text",
  --     "rcarriga/nvim-dap-ui",
  --     { "leoluz/nvim-dap-go", module = "dap-go" }, -- Debug Golang
  --   },
  --   config = function() require("user.plugins.dap").setup() end,
  -- },
}
