return {
    "mickael-menu/zk-nvim",
    event = "VeryLazy",
    keys = {
        {
            "<leader>zn",
            "<Cmd>ZkNew { title = vim.fn.input('Title: ') }<CR>",
            desc = "New note"
        }, {
            "<leader>zo",
            "<Cmd>ZkNotes { sort = { 'modified' } }<CR>",
            desc = "Open note"
        }, {"<leader>zt", "<Cmd>ZkTags<CR>", desc = "Note Tags"}, {
            "<leader>zf",
            "<Cmd>ZkNotes { sort = { 'modified' }, match = { vim.fn.input('Search: ') } }<CR>",
            desc = "Search notes"
        }
    },
    config = function()
        require("zk").setup({
            -- See Setup section below
        })
    end
}
