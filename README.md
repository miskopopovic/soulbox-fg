## ⚙️ Installation

```vim
Plug 'luisiacc/soulbox-fg', {'branch': 'main'}
...
colorscheme soulbox-fg
```

## 🪛 Configuration

> ❗️ configuration needs to be set **BEFORE** loading the color scheme with `colorscheme soulbox-fg`

| Option           | Default  | Available options                                |
| ---------------- | -------- | -------------------------------------------------|
| background\_color | `medium` | `medium`, `dark`                                 |
| transparent\_mode | `false`  | `false`, `true` - sets background colors to None |
| comment\_style    | `italic` | see `:h attr-list`                               |
| keyword\_style    | `italic` | see `:h attr-list`                               |
| function\_style   | `bold`   | see `:h attr-list`                               |
| variable\_style   | `NONE`   | see `:h attr-list`                               |
| hightlights      | `{}`     | override highlights with your custom colors      |

```lua
-- Example config in Lua
vim.g.soulbox_fg_function_style = "NONE"
vim.g.soulbox_fg_keyword_style = "italic"

-- Each highlight group must follow the structure:
-- ColorGroup = {fg = "foreground color", bg = "background_color", style = "some_style(:h attr-list)"}
-- See also :h highlight-guifg
-- Example:
vim.g.soulbox_fg_highlights = {Normal = {fg = "#123123", bg = "NONE", style="underline"}}

-- Enable telescope theme
vim.g.soulbox_fg_telescope_theme = 1

-- Enable transparent mode
vim.g.soulbox_fg_transparent_mode = 1

-- Load the colorscheme
vim.cmd[[colorscheme soulbox-fg]]
```

```vim
" Example config in VimScript
let g:soulbox_fg_function_style = "NONE"
let g:soulbox_fg_keyword_style = "italic"

" Enable telescope theme
let g:soulbox_fg_telescope_theme = 1

" Enable transparent mode
let g:soulbox_fg_transparent_mode = 1

" Load the colorscheme
colorscheme soulbox-fg
```

If you want access to the palette you have to do this:

```lua
local colors = require("soulbox-fg.colors").config()
vim.g.soulbox_fg_highlights = {Normal = {fg = colors.orange}}
```

## 🔌 Plugin support

*   https://github.com/mhinz/vim-startify
*   https://github.com/nvim-treesitter/nvim-treesitter
*   https://github.com/neoclide/coc.nvim
*   https://github.com/kyazdani42/nvim-tree.lua
*   https://github.com/phaazon/hop.nvim
*   https://github.com/lukas-reineke/indent-blankline.nvim
*   https://github.com/hrsh7th/nvim-cmp
*   https://github.com/nvim-telescope/telescope.nvim
*   https://github.com/nvim-lualine/lualine.nvim

### To enable Lualine

To enable `soulbox-fg` theme for `Lualine`, simply specify it in your lualine settings:

    require('lualine').setup {
        options = {
            -- ... your lualine config,
            theme = "soulbox-fg",
            -- ... your lualine config,
        }
    }

## 👽 Extras

Extra color configs for **iTerm2** can be found on [extras](extras/)

## 🌈 Palette

![gruvbox palette](https://user-images.githubusercontent.com/31720261/147415431-13f6c6af-2f76-46c9-8448-20c71e359fc5.png)

  dark = "#202020",
  foreground = "#ebdbb2",
  background = "#282828",
    background_dark = "#242424",
    bg_light = "#32302f",
    medium_gray = "#504945",
    comment = "#665c54",
    gray = "#DEDEDE",
    soft_yellow = "#EEBD35",
    soft_green = "#98971a",
    bright_yellow = "#fabd2f",
    orange = "#d65d0e",
    red = "#fb4934",
    error_red = "#cc241d",
    magenta = "#b16286",
    pink = "#D4879C",
    light_blue = "#7fa2ac",
    dark_gray = "#83a598",
    blue_gray = "#458588",
    forest_green = "#689d6a",
    clean_green = "#8ec07c",
    milk = "#E7D7AD",

    -- Dark theme changes colors to
    ["dark"] = {
          dark = "#161616",
          background = "#202020",
          background_dark = "#161616",
        },

## Aknowledgments

*   Shutout to @ThePrimeagen for the inspiration for the plugin name, Gruvbox baby!
*   I based my structure on https://github.com/folke/tokyonight.nvim (and also copied some of it)
*   The all father 👴 https://github.com/morhetz/gruvbox
