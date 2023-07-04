
function TranslateZH()
  if vim.fn.has("linux") == 1 then
    io.popen("fcitx5-remote -o 2")
  end
  -- get word from input
  vim.ui.input({ prompt = 'Translate: '}, function(text)
    vim.cmd("TranslateW " .. text)
  end)
end

return {
  TranslateZH = TranslateZH
}
