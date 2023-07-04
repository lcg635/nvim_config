return {
  "voldikss/vim-translator",
  event = "VeryLazy",
  config = function ()
    vim.g.translator_default_engines = {"bing"}
    -- vim.g.translator_proxy_url = 'socks5://127.0.0.1:1089'
  end
}
