local utils = require("astronvim.utils")
local fns = require("user.functions")

return {
    -- first key is the mode
    n = {
        L = {
            function()
                require("astronvim.utils.buffer").nav(vim.v.count > 0 and
                                                          vim.v.count or 1)
            end,
            desc = "Next buffer"
        },
        H = {
            function()
                require("astronvim.utils.buffer").nav(
                    -(vim.v.count > 0 and vim.v.count or 1))
            end,
            desc = "Previous buffer"
        },
        ["<a-c>"] = {
            function()
                require("Comment.api").toggle.linewise.count(vim.v.count > 0 and
                                                                 vim.v.count or
                                                                 1)
            end,
            desc = "Toggle comment line"
        },

        ["|"] = {"<cmd>split<cr>", desc = "Horizontal split"},
        ["\\"] = {"<cmd>vsp<cr>", desc = "Vertical split"},
        ["<cr>"] = {"zz", desc = "Center The Line"},
        ["<s-enter>"] = {"zt", desc = "Top The Line"},
        ["Q"] = {"<cmd>qa<cr>", desc = "Quit all"},
        ["P"] = {"viwp", desc = "Replace Word"},
        ["t"] = {"<cmd>TranslateW<cr>", desc = "Translate with bing"},
        ["T"] = {fns.TranslateZH, desc = "translateZH"},

        [",q"] = {"<cmd>confirm q<cr>", desc = "Quit"},
        [",r"] = {':%s/<c-r><c-w>/', desc = "Replace current word"},
        [",c"] = {"*Ncgn", desc = "Replace same word"},
        [",g"] = {
            function() utils.toggle_term_cmd "lazygit" end,
            desc = "ToggleTerm lazygit"
        },
        [",f"] = {
            function() require("telescope.builtin").find_files() end,
            desc = "Find files"
        },
        [",s"] = {function() require("spectre").open() end, desc = "Spectre"},
        [",w"] = {
            function()
                require('spectre').open_visual({select_word = true})
            end,
            desc = "Spectre (current word)"
        },
        [",b"] = {
            "<cmd>Telescope file_browser path=%:p:h select_buffer=true<CR>",
            desc = "File browser"
        },
        [",d"] = {
            function() require("telescope.builtin").diagnostics() end,
            desc = "Search diagnostics"
        },

        ["<F7>"] = false,
        ["<F11>"] = {"<cmd>1ToggleTerm<cr>", desc = "Toggle terminal"},
        ["<F12>"] = {
            "<cmd>2ToggleTerm size=11 direction=horizontal<cr>",
            desc = "ToggleTerm horizontal split"
        },

        ["<leader>."] = {"<cmd>cd %:p:h<cr>", desc = "Set CWD"},
        ["<leader>ud"] = {"<cmd>DBUIToggle<cr>", desc = "Toggle db"},
        ["<leader>ft"] = {"<cmd>TodoTelescop<cr>", desc = "Find todo"},
        ["<leader>fp"] = {"<cmd>Telescope projects<cr>", desc = "Find projects"},
        ["<leader>bR"] = {"<cmd>e!<cr>", desc = "Refresh buffers"},
        ["<leader>lA"] = {"<cmd>LspRestart<cr>", desc = "Restart lsp"},
        ["<leader>ua"] = {"<cmd>ASToggle<cr>", desc = "Toggle auto-save"},
        ["<leader>uc"] = {"<cmd>Copilot toggle<cr>", desc = "Toggle copilot"},
        ["<leader>up"] = {"<cmd>PlantumlToggle<cr>", desc = "Toggle plantuml"},
        ["<leader>pr"] = {"<cmd>AstroReload<cr>", desc = "Astronvim reload"},
        ["<leader>z"] = {desc = "ZK note"},
        ["<leader>r"] = {fns.Make, desc = "Run make"},
        ["<leader>q"] = {desc = "Quickfix"},
        ["<leader>ql"] = {"<cmd>copen<cr>", desc = "List quickfix"},
        ["<leader>qn"] = {"<cmd>cnext<cr>", desc = "Next quickfix"},

        ["<leader>m"] = {desc = "Media"},
        ["<leader>mp"] = {"<cmd>silent !playerctl previous<cr>", desc = "Media previous"},
        ["<leader>mn"] = {"<cmd>silent !playerctl next<cr>", desc = "Media next"},
    },
    i = {
        ["<c-u>"] = {
            function() vim.lsp.buf.signature_help() end,
            desc = "Signature help"
        },
        ["<c-i>"] = {"<esc>A", desc = "go to end"},
        ["<c-h>"] = {"<esc>I", desc = "go to start"},
        ["<c-m>"] = {"(<esc>Ea)", desc = "wrap ()"},
        ["<a-v>"] = {"<esc>pa", desc = "Paste"}
    },
    v = {
        ["t"] = {":'<,'>TranslateW<cr>", desc = "Translate"},
        ["T"] = {
            ":'<,'>TranslateW --engines=google<cr>",
            desc = "Translate with google"
        },
        ["<a-c>"] = {
            "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>",
            desc = "Toggle comment for selection"
        }
    },
    t = {
        ["<F7>"] = false,
        ["<F11>"] = {"<cmd>1ToggleTerm<cr>", desc = "Toggle terminal"},
        ["<F12>"] = {
            "<cmd>2ToggleTerm<cr>",
            desc = "ToggleTerm horizontal split"
        },
        ["<esc>"] = {"<c-\\><c-n>", desc = "Esc"},
        ["<c-k>"] = {"<c-\\><c-n><c-w>k"},
    },
    c = {
        ["<c-w>"] = {"<c-r><c-w>", desc = "Copy current word to command prompt"}
    }
}
