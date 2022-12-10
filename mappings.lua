return {
  -- first key is the mode
  n = {
    -- ["<leader>d"] = false,

    ["<cr>"] = { "zt", desc = "Top The Line" },
    [",w"] = { "<esc>:w<cr>", desc = "Save" },
    ["<leader>."] = { "<cmd>cd %:p:h<cr>", desc = "Set CWD" },

    -- mappings seen under group name "Buffer"
    ["<leader>bT"] = { "<cmd>tabnew#<cr>", desc = "Opens the alternate buffer" },
    ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
    ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
    ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },
    ["<leader>bl"] = { "<cmd>BufferLineCloseRight<cr>", desc = "Close Right" },
    ["<leader>bh"] = { "<cmd>BufferLineCloseLeft<cr>", desc = "Close Left" },

    ["<leader>rw"] = {
      function()
        local word = vim.fn.expand "<cword>"
        local rp = vim.fn.input "Replace with: "
        vim.cmd("%s/" .. word .. "/" .. rp .. "/g")
      end,
    },

    ["\\"] = { "<cmd>split<cr>", desc = "Horizontal split" },
    ["|"] = { "<cmd>vsplit<cr>", desc = "Vertical split" },
  },
  i = {
    ["<c-s>"] = { "<esc>:w<cr>", desc = "Save" },
    [",w"] = { "<esc>:w<cr>", desc = "Save" },
    [",,"] = { ",", desc = "" },
    [",h"] = { function() vim.lsp.buf.signature_help() end, desc = "Signature help" },
  },
  v = {
    -- ["<leader>dv"] = { ":lua require('dap.ui.variables').visual_hover()<CR>", desc = "Debug Hover" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
