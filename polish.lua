return function()
  require("user.autocmds.go")
  require("user.autocmds.dart")
  require("user.autocmds.utils")

  local basicGroup = vim.api.nvim_create_augroup('basic', {})

  -- 添加离开插入模式后的操作
  vim.api.nvim_create_autocmd({ "InsertLeave" }, {
    group = basicGroup,
    callback = function()
      -- 判断当前的操作系统是不是linux
      if vim.fn.has("linux") == 1 then
        io.popen("fcitx5-remote -c")
      end
    end,
  })

  vim.api.nvim_create_user_command("OverseerRestartLast", function()
    local overseer = require("overseer")
    local tasks = overseer.list_tasks({ recent_first = true })
    if vim.tbl_isempty(tasks) then
      vim.notify("No tasks found", vim.log.levels.WARN)
    else
      overseer.run_action(tasks[1], "restart")
    end
  end, {})

  vim.api.nvim_create_autocmd({ 'User' }, {
    pattern = "SessionLoadPost",
    group = basicGroup,
    callback = function()
      vim.cmd("Neotree show")
    end,
  })
end
