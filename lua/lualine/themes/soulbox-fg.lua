-- Copyright (c) 2020-2021 hoob3rt
-- MIT license, see LICENSE for more details.
-- stylua: ignore
local c = require("soulbox-fg.colors").config()

return {
  normal = {
    a = { bg = c.light_blue, fg = c.dark, gui = "bold" },
    b = { bg = c.lualine_bg, fg = c.light_blue },
    c = { bg = c.lualine_bg, fg = c.milk },
  },
  insert = {
    a = { bg = c.bright_yellow, fg = c.dark, gui = "bold" },
    b = { bg = c.lualine_bg, fg = c.bright_yellow },
    c = { bg = c.lualine_bg, fg = c.milk },
  },
  visual = {
    a = { bg = c.milk, fg = c.dark, gui = "bold" },
    b = { bg = c.lualine_bg, fg = c.milk },
    c = { bg = c.lualine_bg, fg = c.milk },
  },
  replace = {
    a = { bg = c.error_red, fg = c.dark, gui = "bold" },
    b = { bg = c.lualine_bg, fg = c.error_red },
    c = { bg = c.lualine_bg, fg = c.milk },
  },
  command = {
    a = { bg = c.soft_green, fg = c.dark, gui = "bold" },
    b = { bg = c.lualine_bg, fg = c.soft_green },
    c = { bg = c.lualine_bg, fg = c.milk },
  },
  inactive = {
    a = { bg = c.background, fg = c.gray, gui = "bold" },
    b = { bg = c.background, fg = c.gray },
    c = { bg = c.background, fg = c.gray },
  },
}
