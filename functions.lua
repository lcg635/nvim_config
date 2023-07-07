local Fn = {}

-- translate chinese word from input to english
Fn.TranslateZH = function()
    if vim.fn.has("linux") == 1 then io.popen("fcitx5-remote -o 2") end
    -- get word from input
    vim.ui.input({prompt = 'Translate: '}, function(text)
        if text ~= nil then vim.cmd("TranslateW " .. text) end
    end)
end

-- select makefile target and run
Fn.Make = function()
    if vim.fn.filereadable("Makefile") == 1 then
        -- grep make file targets
        local targets = vim.fn.systemlist(
                            "make -qp | awk -F':' '/^[a-zA-Z0-9][^$#\\/\\t=]*:([^=]|$)/ {split($1,A,/ /);for(i in A)print A[i]}'")
        -- exclude target Makefile
        for i, v in ipairs(targets) do
            if v == "Makefile" then table.remove(targets, i) end
        end
        -- ui select targets
        vim.ui.select(targets, {}, function(text)
            if text ~= nil then vim.cmd("make " .. text) end
        end)
    else
        vim.notify("No Makefile found")
    end
end

return Fn
