return {
  -- first key is the mode
  n = {
    ["<Leader>d"] = false,
    ["<cr>"] = { "zt", desc = "Top The Line" },
    [",w"] = { ":w<cr>", desc = "Save" },
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
    ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
    ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },
    ["<leader>bl"] = { "<cmd>BufferLineCloseRight<cr>", desc = "Close Right" },
    ["<leader>bh"] = { "<cmd>BufferLineCloseLeft<cr>", desc = "Close Left" },
    ["\\"] = { "<cmd>split<cr>", desc = "Horizontal split" },
    ["|"] = { "<cmd>vsplit<cr>", desc = "Vertical split" },

    ["<F4>"] = { ":lua require('dap').toggle_breakpoint()<CR>", desc = "Toggle Breakpoint" },
    ["<F9>"] = { ":lua require('dap').continue()<CR>", desc = "Debug Continue" },
    ["<F5>"] = { ":lua require('dap').step_over()<CR>", desc = "Debug Step Over" },
    ["<F6>"] = { ":lua require('dap').step_into()<CR>", desc = "Debug Step Into" },
    ["<F7>"] = { ":lua require('dap').step_out()<CR>", desc = "Debug Step Out" },
    ["<Leader>dh"] = { ":lua require('dap.ui.variables').hover()<CR>", desc = "Debug Hover" },
  },
  i = {
    [",w"] = { "<esc>:w<cr>", desc = "Save" },
  },
  v = {
    ["<Leader>dv"] = { ":lua require('dap.ui.variables').visual_hover()<CR>", desc = "Debug Hover" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
