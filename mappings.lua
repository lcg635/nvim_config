return {
  -- first key is the mode
  n = {
    ["<leader>o"] = false,
    ["<leader>Q"] = { "<cmd>qa<cr>", desc = "Quit all" },
    ["<leader>d"] = { "yyp", desc = "Copy line" },

    ["<a-/>"] = { function() require("Comment.api").toggle.linewise.current() end, desc = "Comment line" },
    ["<cr>"] = { "zt", desc = "Top The Line" },
    [",w"] = { "<esc>:w<cr>", desc = "Save" },
    ["<leader>."] = { "<cmd>cd %:p:h<cr>", desc = "Set CWD" },

    -- mappings seen under group name "Buffer"
    ["<leader>C"] = { "<cmd>BufferLineCloseRight<cr><cmd>BufferLineCloseLeft<cr>", desc = "Close other buffers" },
    ["<leader>bb"] = { "<cmd>e #<cr>", desc = "Opens the alternate buffer" },
    ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
    ["<leader>bl"] = { "<cmd>BufferLineCloseRight<cr>", desc = "Close Right" },
    ["<leader>bh"] = { "<cmd>BufferLineCloseLeft<cr>", desc = "Close Left" },

    ["<F7>"] = false,
    ["<F12>"] = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", desc = "ToggleTerm horizontal split" },
    ["\\"] = { "<cmd>split<cr>", desc = "Horizontal split" },
    ["|"] = { "<cmd>vsplit<cr>", desc = "Vertical split" },
  },
  i = {
    ["<c-s>"] = { "<esc>:w<cr>", desc = "Save" },
    ["<c-u>"] = { function() vim.lsp.buf.signature_help() end, desc = "Signature help" },
    ["<c-e>"] = { "<esc>A", desc = "go to end" },
    ["<c-a>"] = { "<esc>I", desc = "go to start" },
    ["<c-l>"] = { "<c-]>", desc = "" },
  },
  v = {
    -- ["<leader>dv"] = { ":lua require('dap.ui.variables').visual_hover()<CR>", desc = "Debug Hover" },
    ["<a-/>"] = { "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>", desc = "Comment" },
  },
  t = {
    -- setting a mapping to false will disable it
    ["<esc>"] = { "<C-\\><C-n>", desc = "esc" },
    ["<F7>"] = false,
    ["<F12>"] = { "<cmd>ToggleTerm<cr>", desc = "ToggleTerm horizontal split" },
  },
}
