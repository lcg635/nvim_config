return function()
  require("user.autocmds.go")
  require("user.autocmds.dart")
  require("user.autocmds.utils")

  -- 移除背景色
  -- vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
  -- vim.api.nvim_create_autocmd({ "InsertLeave" }, {
  --   callback = function()
  --     io.popen("fcitx5-remote -c")
  --   end,
  -- })
end

