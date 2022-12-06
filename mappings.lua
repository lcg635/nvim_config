return {
  -- first key is the mode
  n = {
    ["<leader>d"] = false,
    ["<leader>c"] = false,

    ["<cr>"] = { "zt", desc = "Top The Line" },
    -- second key is the lefthand side of the map
    ["<leader>."] = { "<cmd>cd %:p:h<cr>", desc = "Set CWD" },

    -- mappings seen under group name "Buffer"
    ["<leader>q"] = { ":Bdelete!<cr>", desc = "Quit Buffer" },
    ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
    ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
    ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },
    ["<leader>bl"] = { "<cmd>BufferLineCloseRight<cr>", desc = "Close Right" },
    ["<leader>bh"] = { "<cmd>BufferLineCloseLeft<cr>", desc = "Close Left" },

    ["<leader>cw"] = {
      function()
        local word = vim.fn.expand "<cword>"
        local rp = vim.fn.input "Replace with: "
        vim.cmd("%s/" .. word .. "/" .. rp .. "/g")
      end,
    },

    ["\\"] = { "<cmd>split<cr>", desc = "Horizontal split" },
    ["|"] = { "<cmd>vsplit<cr>", desc = "Vertical split" },

    ["<F5>"] = { ":lua require('dap').toggle_breakpoint()<CR>", desc = "Toggle Breakpoint" },
    ["<F9>"] = { ":lua require('dap').continue()<CR>", desc = "Debug Continue" },
    ["<F10>"] = { ":lua require('dap').step_over()<CR>", desc = "Debug Step Over" },
    ["<F11>"] = { ":lua require('dap').step_into()<CR>", desc = "Debug Step Into" },
    ["<F12>"] = { ":lua require('dap').step_out()<CR>", desc = "Debug Step Out" },
    ["<Leader>dh"] = { ":lua require('dap.ui.variables').hover()<CR>", desc = "Debug Hover" },
  },
  i = {
  },
  v = {
    ["<Leader>dv"] = { ":lua require('dap.ui.variables').visual_hover()<CR>", desc = "Debug Hover" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
