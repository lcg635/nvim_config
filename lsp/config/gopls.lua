return {
  analyses = {
    shadow = true,
    nilness = true,
    unusedresult = true,
    unusedparams = false,
    unusedwrite = true,
    useany = true,
    unreachable = true,
  },
  experimentalPostfixCompletions = true,
  gofumpt = true,
  staticcheck = true,
  usePlaceholders = true,
  hints = {
    assignVariableTypes = true,
    compositeLiteralFields = true,
    compositeLiteralTypes = true,
    constantValues = true,
    functionTypeParameters = true,
    parameterNames = true,
    rangeVariableTypes = true,
  },
}
