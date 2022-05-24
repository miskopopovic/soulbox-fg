local util = require("soulbox-fg.util")
local theme = require("soulbox-fg.theme")

local M = {}

function M.colorscheme()
  util.load(theme.setup())
end

return M
