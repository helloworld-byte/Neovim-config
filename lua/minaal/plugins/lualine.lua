--[[local status, lualine = pcall(require, "lualine")
if not status then
  return
end

local lualine_nightfly = require("lualine.themes.nightfly")

local new_colors = {
  blue = "#65D1FF",
  green = "#3EFFDC",
  violet = "#FF61EF",
  yellow = "#FFDA7B",
  black = "#000000",
}

lualine_nightfly.normal.a.bg = new_colors.blue
lualine_nightfly.insert.a.bg = new_colors.green
lualine_nightfly.visual.a.bg = new_colors.violet
lualine_nightfly.command = {
  a = {
    gui = "bold",
    bg = new_colors.yellow,
    fg = new_colors.black, -- black
  },
}


lualine.setup({
  options = {
    theme = lualine_nightfly
  }
})
]]--

local status, lualine = pcall(require, "lualine")
if not status then
  return
end

-- Use existing nightfly theme as base
local lualine_nightfly = require("lualine.themes.nightfly")

-- Adjust to retro-styled terminal palette
local retro_colors = {
  background = "#303446",
  foreground = "#c6d0f5",
  green = "#a6d189",
  yellow = "#e5c890",
  blue = "#8caaee",
  pink = "#f4b8e4",
  gray = "#51576d",
  white = "#b5bfe2",
}

lualine_nightfly.normal.a.bg = retro_colors.blue
lualine_nightfly.normal.a.fg = retro_colors.background
lualine_nightfly.insert.a.bg = retro_colors.green
lualine_nightfly.insert.a.fg = retro_colors.background
lualine_nightfly.visual.a.bg = retro_colors.pink
lualine_nightfly.visual.a.fg = retro_colors.background
lualine_nightfly.inactive.a.bg = retro_colors.gray
lualine_nightfly.inactive.a.fg = retro_colors.foreground
lualine_nightfly.command = {
  a = {
    gui = "bold",
    bg = retro_colors.yellow,
    fg = retro_colors.background,
  }
}

lualine.setup({
  options = {
    theme = lualine_nightfly,
    icons_enabled = true,
    section_separators = '',
    component_separators = '',
  },
})
