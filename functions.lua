local Fn = {}

Fn.TranslateZH = function()
    if vim.fn.has("linux") == 1 then io.popen("fcitx5-remote -o 2") end
    -- get word from input
    vim.ui.input({prompt = 'Translate: '},
                 function(text) vim.cmd("TranslateW " .. text) end)
end

Fn.Make = function()
    if vim.fn.filereadable("Makefile") == 1 then
        -- grep make file targets
        local targets = vim.fn.systemlist(
                            "make -qp | awk -F':' '/^[a-zA-Z0-9][^$#\\/\\t=]*:([^=]|$)/ {split($1,A,/ /);for(i in A)print A[i]}'")
        -- ui select targets
        vim.ui.select(targets, {}, function(t)
            if t == "" then
                return
            end

            if t == "Makefile" then
                vim.cmd("make")
            else
                vim.cmd("make " .. t)
            end
        end)
    else
        vim.notify("No Makefile found")
    end
end

return Fn
