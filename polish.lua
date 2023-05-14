return function()
  require("user.autocmds.go")
  require("user.autocmds.dart")
  require("user.autocmds.utils")

  -- 添加离开插入模式后的操作
  vim.api.nvim_create_autocmd({ "InsertLeave" }, {
    callback = function()
      -- 判断当前的操作系统是不是linux
      if vim.fn.has("unix") == 1 then
        io.popen("fcitx5-remote -c")
      end
    end,
  })
end

