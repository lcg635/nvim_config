return {
  -- first key is the mode
  n = {
    L = { function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end, desc = "Next buffer" },
    H = { function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end, desc = "Previous buffer" },

    ["Q"] = { "<cmd>qa<cr>", desc = "Quit all" },
    -- ["<c-D>"] = { "yyp", desc = "Copy line" },

    ["<a-/>"] = { function() require("Comment.api").toggle.linewise.current() end, desc = "Comment line" },
    ["<cr>"] = { "zz", desc = "Top The Line" },
    [",w"] = { "<esc>:w<cr>", desc = "Save" },

    ["<F7>"] = false,
    ["<F11>"] = { "<cmd>1ToggleTerm<cr>", desc = "Toggle terminal" },
    ["<F12>"] = { "<cmd>2ToggleTerm size=11 direction=horizontal<cr>", desc = "ToggleTerm horizontal split" },
    ["\\"] = { "<cmd>split<cr>", desc = "Horizontal split" },
    ["|"] = { "<cmd>vsplit<cr>", desc = "Vertical split" },

    ["<leader>."] = { "<cmd>cd %:p:h<cr>", desc = "Set CWD" },
    ["<leader>r"] = { ':%s/<c-r><c-w>/', desc = "Replace current word"},
    ["<leader>R"] = { '<cmd>e!<cr>', desc = "Refresh buffers"},

    ["<leader>fp"] = { "<cmd>Telescop projects<cr>", desc = "Find projects" },
  },
  i = {
    ["<c-s>"] = { "<esc>:w<cr>", desc = "Save" },
    ["<c-u>"] = { function() vim.lsp.buf.signature_help() end, desc = "Signature help" },
    ["<c-l>"] = { "<esc>A", desc = "go to end" },
    ["<c-h>"] = { "<esc>I", desc = "go to start" },
  },
  v = {
    -- ["<leader>dv"] = { ":lua require('dap.ui.variables').visual_hover()<CR>", desc = "Debug Hover" },
    ["<a-/>"] = { "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>", desc = "Comment" },
  },
  t = {
    -- setting a mapping to false will disable it
    ["<esc>"] = { "<C-\\><C-n>", desc = "esc" },
    ["<F7>"] = false,
    ["<F11>"] = { "<cmd>1ToggleTerm<cr>", desc = "Toggle terminal" },
    ["<F12>"] = { "<cmd>2ToggleTerm<cr>", desc = "ToggleTerm horizontal split" },
  },
  c = {
    ["<c-w>"] = { "<c-r><c-w>", desc = "Copy current word to command prompt" }
  }
}
