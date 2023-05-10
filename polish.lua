return function()
  require("user.autocmds.go")
  require("user.autocmds.dart")
  require("user.autocmds.utils")

  -- 移除背景色
  vim.api.nvim_create_autocmd({ "InsertLeave" }, {
    callback = function()
      -- io.popen("fcitx5-remote -c")
      
      -- auto save file
      -- vim.cmd("silent! w")
    end,
  })
end

