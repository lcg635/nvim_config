local utils = require "astronvim.utils"

return {
  -- first key is the mode
  n = {
    L = { function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end, desc = "Next buffer" },
    H = { function() require("astronvim.utils.buffer").nav( -(vim.v.count > 0 and vim.v.count or 1)) end, desc = "Previous buffer" },
    T = { "zt", desc = "Top The Line" },
    ["\\"] = { "<cmd>split<cr>", desc = "Horizontal split" },
    ["|"] = { "<cmd>vsp<cr>", desc = "Vertical split" },
    ["<cr>"] = { "zz", desc = "Center The Line" },
    ["Q"] = { "<cmd>qa<cr>", desc = "Quit all" },

    [",q"] = { "<cmd>confirm q<cr>", desc = "Quit" },
    [",d"] = { "yyp", desc = "Copy line" },
    [",r"] = { ':%s/<c-r><c-w>/', desc = "Replace current word" },
    [",c"] = { "*Ncgn", desc = "Replace same word" },
    [",g"] = { function() utils.toggle_term_cmd "lazygit" end, desc = "ToggleTerm lazygit" },
    [",f"] = { function() require("telescope.builtin").find_files() end, desc = "Find files" },
    [",s"] = { function() require("spectre").open() end, desc = "Spectre" },
    [",S"] = { function() require("spectre").open_file_search() end, desc = "Spectre (current file)" },
    [",w"] = { "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", desc = "Spectre (current word)" },

    ["<F7>"] = false,
    ["<F11>"] = { "<cmd>1ToggleTerm<cr>", desc = "Toggle terminal" },
    ["<F12>"] = { "<cmd>2ToggleTerm size=11 direction=horizontal<cr>", desc = "ToggleTerm horizontal split" },

    ["<leader>."] = { "<cmd>cd %:p:h<cr>", desc = "Set CWD" },
    ["<leader>r"] = { desc = "Run" },
    ["<leader>rt"] = { "<cmd>OverseerToggle<cr>", desc = "OverseerToggle" },
    ["<leader>rr"] = { "<cmd>OverseerRun<cr>", desc = "OverseerRun" },
    ["<leader>fp"] = { "<cmd>Telescop projects<cr>", desc = "Find projects" },
    ["<leader>fT"] = { function() require("telescope.builtin").colorscheme { enable_preview = true } end, desc = "Find themes" },
    ["<leader>ft"] = { "<cmd>TodoTelescop<cr>", desc = "Find todo" },
    ["<leader>bR"] = { '<cmd>e!<cr>', desc = "Refresh buffers" },
    ["<leader>lA"] = { '<cmd>LspRestart<cr>', desc = "Restart lsp" },
  },
  i = {
    ["<c-s>"] = { "<esc>:w<cr>", desc = "Save" },
    ["<c-u>"] = { function() vim.lsp.buf.signature_help() end, desc = "Signature help" },
    ["<c-l>"] = { "<esc>A", desc = "go to end" },
    ["<c-h>"] = { "<esc>I", desc = "go to start" },
  },
  v = {
    -- ["<leader>dv"] = { ":lua require('dap.ui.variables').visual_hover()<CR>", desc = "Debug Hover" },
    -- ["/"] = { "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>", desc = "Comment" },
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
