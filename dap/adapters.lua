return function(config)
    local debugger_dir = vim.fn.stdpath("cache") .. "/dart-code"
    local debugger_path = debugger_dir .. "/out/dist/debug.js"
    config.dart = {
        type = "executable",
        command = "node",
        args = { debugger_path, "flutter" },
    }
    return config
end
