return function(config)
  config.source_priority = {
    nvim_lsp = 1000,
    luasnip = 750,
    buffer = 500,
    path = 250,
  }
  config.sources.insert(
    { name = 'orgmode' }
  )
  return config
end

