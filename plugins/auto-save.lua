---@diagnostic disable: undefined-field
return {
  "Pocco81/auto-save.nvim",
  event = "VeryLazy",
  config = function()
    require("auto-save").setup({
      condition = function(buf)
			  local fn = vim.fn
			  local utils = require("auto-save.utils.data")

			  if fn.getbufvar(buf, "&modifiable") == 1 and
				  utils.not_in(fn.getbufvar(buf, "&filetype"), {}) then
          local undotree = vim.fn.undotree()
          if undotree.seq_last ~= undotree.seq_cur then
            return false
          end
			    return true -- met condition(s), can save
			  end
		    return false -- can't save
	    end
    })
  end
}
