return {
  opt = {
    -- set to true or false etc.
    background = "dark", -- sets vim.opt.background
    -- background = "light", -- sets vim.opt.background
    relativenumber = false, -- sets vim.opt.relativenumber
    number = true, -- sets vim.opt.number
    spell = false, -- sets vim.opt.spell
    signcolumn = "auto", -- sets vim.opt.signcolumn to auto
    wrap = false, -- sets vim.opt.wrap
    tabstop = 4,
    shiftwidth = 4,
    softtabstop = 4,
    termguicolors = true,
    guifont = "FiraCode Nerd Font:h8",
  },

  g = {
    mapleader = " ", -- sets vim.g.mapleader
    autoformat_enabled = true, -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
    cmp_enabled = true, -- enable completion at start
    autopairs_enabled = true, -- enable autopairs at start
    diagnostics_enabled = true, -- enable diagnostics at start
    status_diagnostics_enabled = true, -- enable diagnostics in statusline
    icons_enabled = true, -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
    ui_notifications_enabled = true, -- disable notifications when toggling UI elements
    neovide_padding_top = 10,
    neovide_padding_bottom = 10,
    neovide_padding_right = 10,
    neovide_padding_left = 10,
    neovide_cursor_vfx_mode = "sonicboom",
  },
}
