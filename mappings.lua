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

    [",w"] = { "<esc>:w<cr>", desc = "Save" },
    [",q"] = { "<cmd>confirm q<cr>", desc = "Quit" },
    [",d"] = { "yyp", desc = "Copy line" },
    [",r"] = { ':%s/<c-r><c-w>/', desc = "Replace current word" },
    [",R"] = { '<cmd>e!<cr>', desc = "Refresh buffers" },
    -- ["<c-/>"] = { function() require("Comment.api").toggle.linewise.current() end, desc = "Comment line" },
    [",c"] = { "*Ncgn", desc = "Replace same word" },
    [",g"] = { function() utils.toggle_term_cmd "lazygit" end, desc = "ToggleTerm lazygit" },
    [",f"] = { function() require("telescope.builtin").find_files() end, desc = "Find files" },
    [",s"] = { function() require("spectre").open() end, desc = "Spectre" },
    [",S"] = { function() require("spectre").open_file_search() end, desc = "Spectre (current file)" },
    -- [",s"] = {
    --   function()
    --     require("telescope.builtin").live_grep {
    --       additional_args = function(args) return vim.list_extend(args, { "--hidden", "--no-ignore" }) end,
    --     }
    --   end,
    --   desc = "Find words in all files",
    -- },

    ["<F7>"] = false,
    ["<F11>"] = { "<cmd>1ToggleTerm<cr>", desc = "Toggle terminal" },
    ["<F12>"] = { "<cmd>2ToggleTerm size=11 direction=horizontal<cr>", desc = "ToggleTerm horizontal split" },

    ["<leader>."] = { "<cmd>cd %:p:h<cr>", desc = "Set CWD" },
    ["<leader>fp"] = { "<cmd>Telescop projects<cr>", desc = "Find projects" },
    ["<leader>fT"] = { function() require("telescope.builtin").colorscheme { enable_preview = true } end, desc = "Find themes" },
    ["<leader>ft"] = { "<cmd>TodoTelescop<cr>", desc = "Find todo" },
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
