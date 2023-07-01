return {
  {
    "hrsh7th/cmp-nvim-lsp-signature-help",
    event = "VeryLazy"
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require "cmp"
      -- modify the sources part of the options table
      opts.sources = cmp.config.sources {
        { name = "nvim_lsp",               priority = 1000 },
        { name = "luasnip",                priority = 750 },
        { name = "buffer",                 priority = 500 },
        { name = "path",                   priority = 250 },
        { name = 'nvim_lsp_signature_help' }
      }
      return opts
    end
  }
}
