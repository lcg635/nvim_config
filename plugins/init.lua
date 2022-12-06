return {
  { "rebelot/kanagawa.nvim" },
  { "ggandor/leap.nvim" },
  { "mg979/vim-visual-multi" },

  ["mfussenegger/nvim-dap"] = {
    opt = true,
    event = "BufReadPre",
    module = { "dap" },
    wants = {
      "nvim-dap-virtual-text",
      "nvim-dap-ui",
      "which-key.nvim",
    },
    requires = {
      "theHamsta/nvim-dap-virtual-text",
      "rcarriga/nvim-dap-ui",
      { "leoluz/nvim-dap-go", module = "dap-go" }, -- Debug Golang
    },
    config = function() require("user.plugins.dap").setup() end,
  },
}
