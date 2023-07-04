return {
    settings = {
        gopls = {
            analyses = {
                shadow = true,
                nilness = true,
                unusedresult = true,
                unusedparams = true,
                unusedwrite = true,
                useany = true,
                unreachable = true
            },
            allExperiments = true,
            experimentalPostfixCompletions = false,
            gofumpt = false,
            staticcheck = true,
            usePlaceholders = false,
            hints = {
                assignVariableTypes = true,
                compositeLiteralFields = true,
                compositeLiteralTypes = true,
                constantValues = true,
                functionTypeParameters = true,
                parameterNames = true,
                rangeVariableTypes = true
            }
        }
    }
}
