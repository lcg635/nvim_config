return {
  -- first key is the mode
  n = {
    ["<leader>o"] = false,

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

    ["\\"] = { "<cmd>split<cr>", desc = "Horizontal split" },
    ["|"] = { "<cmd>vsplit<cr>", desc = "Vertical split" },
  },
  i = {
    [",w"] = { "<esc>:w<cr>", desc = "Save" },
    [",,"] = { ",", desc = "," },
    ["<c-h>"] = { function() vim.lsp.buf.signature_help() end, desc = "Signature help" },
    ["<c-l>"] = { "<esc>A", desc = "go to end" },
  },
  v = {
    -- ["<leader>dv"] = { ":lua require('dap.ui.variables').visual_hover()<CR>", desc = "Debug Hover" },
  },
  t = {
    -- setting a mapping to false will disable it
    ["<esc>"] = { "<C-\\><C-n>", desc = "esc" },
  },
}
