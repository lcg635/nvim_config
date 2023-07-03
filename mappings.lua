local utils = require "astronvim.utils"

return {
  -- first key is the mode
  n = {
    L = { function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end, desc = "Next buffer" },
    H = { function() require("astronvim.utils.buffer").nav( -(vim.v.count > 0 and vim.v.count or 1)) end, desc = "Previous buffer" },
    ["<s-enter>"] = { "zt", desc = "Top The Line" },

    ["|"] = { "<cmd>split<cr>", desc = "Horizontal split" },
    ["\\"] = { "<cmd>vsp<cr>", desc = "Vertical split" },
    ["<cr>"] = { "zz", desc = "Center The Line" },
    ["Q"] = { "<cmd>qa<cr>", desc = "Quit all" },
    ["P"] = { "viwp", desc = "Replace Word" },
    ["t"] = {"<cmd>TranslateW<cr>", desc = "Translate with bing" },

    [",q"] = { "<cmd>confirm q<cr>", desc = "Quit" },
    [",e"] = { "<cmd>ZenMode<cr>", desc = "Zend Mode" },
    [",r"] = { ':%s/<c-r><c-w>/', desc = "Replace current word" },
    [",c"] = { "*Ncgn", desc = "Replace same word" },
    [",g"] = { function() utils.toggle_term_cmd "lazygit" end, desc = "ToggleTerm lazygit" },
    [",f"] = { function() require("telescope.builtin").find_files() end, desc = "Find files" },
    [",s"] = { function() require("spectre").open() end, desc = "Spectre" },
    [",w"] = { "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", desc = "Spectre (current word)" },
    [",d"] = { "<cmd>Telescope file_browser path=%:p:h select_buffer=true<CR>", desc = "File browser" },

    ["<F7>"] = false,
    ["<F11>"] = { "<cmd>1ToggleTerm<cr>", desc = "Toggle terminal" },
    ["<F12>"] = { "<cmd>2ToggleTerm size=11 direction=horizontal<cr>", desc = "ToggleTerm horizontal split" },

    ["<leader>."] = { "<cmd>cd %:p:h<cr>", desc = "Set CWD" },
    ["<leader>fT"] = { function() require("telescope.builtin").colorscheme { enable_preview = true } end, desc = "Find themes" },
    ["<leader>ft"] = { "<cmd>TodoTelescop<cr>", desc = "Find todo" },
    ["<leader>fp"] = { "<cmd>Telescope projects<cr>", desc = "Find projects" },
    ["<leader>bR"] = { '<cmd>e!<cr>', desc = "Refresh buffers" },
    ["<leader>lA"] = { '<cmd>LspRestart<cr>', desc = "Restart lsp" },
    ["<leader>ua"] = { "<cmd>ASToggle<cr>", desc = "Toggle auto-save" },
    ["<leader>uc"] = { "<cmd>Copilot toggle<cr>", desc = "Toggle copilot" },
    ["<leader>up"] = { "<cmd>PlantumlToggle<cr>", desc = "Toggle plantuml" },
  },
  i = {
    ["<c-u>"] = { function() vim.lsp.buf.signature_help() end, desc = "Signature help" },
    ["<c-e>"] = { "<esc>A", desc = "go to end" },
    ["<c-h>"] = { "<esc>I", desc = "go to start" },
    ["<C-i>"] = { "(<esc>Ea)", desc = "wrap ()" },
  },
  v = {
    ["t"] = {":'<,'>TranslateW --engines=google<cr>", desc = "Translate with google" },
    ["T"] = {":'<,'>TranslateW --engines=google --target_lang=en<cr>", desc = "Translate with google" },
    -- ["<leader>dv"] = { ":lua require('dap.ui.variables').visual_hover()<CR>", desc = "Debug Hover" },
    -- ["/"] = { "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>", desc = "Comment" },
  },
  t = {
    ["<F7>"] = false,
    ["<F11>"] = { "<cmd>1ToggleTerm<cr>", desc = "Toggle terminal" },
    ["<F12>"] = { "<cmd>2ToggleTerm<cr>", desc = "ToggleTerm horizontal split" },
  },
  c = {
    ["<c-w>"] = { "<c-r><c-w>", desc = "Copy current word to command prompt" }
  }
}
