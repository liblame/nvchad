-- TokyoNight "Moon" for NvChad/base46.
-- Colors pulled straight from Ghostty's bundled "TokyoNight Moon" theme
-- (/usr/share/ghostty/themes/TokyoNight Moon) so nvim, ghostty, bat and
-- zsh-syntax-highlighting all render the same palette.

local M = {}

M.base_30 = {
  white = "#c8d3f5",
  darker_black = "#191b29",
  black = "#222436", -- nvim bg
  black2 = "#1e2030",
  one_bg = "#2f334d",
  one_bg2 = "#2d3f76",
  one_bg3 = "#3b4261",
  grey = "#545c7e",
  grey_fg = "#636da6",
  grey_fg2 = "#737aa2",
  light_grey = "#828bb8",
  red = "#ff757f",
  baby_pink = "#ff9eb2",
  pink = "#fca7ea",
  line = "#2d3f76", -- for lines like vertsplit
  green = "#c3e88d",
  vibrant_green = "#4fd6be",
  nord_blue = "#65bcff",
  blue = "#82aaff",
  yellow = "#ffc777",
  sun = "#ffd8a8",
  purple = "#c099ff",
  dark_purple = "#a48cf2",
  teal = "#4fd6be",
  orange = "#ff966c",
  cyan = "#86e1fc",
  statusline_bg = "#2f334d",
  lightbg = "#2d3f76",
  pmenu_bg = "#82aaff",
  folder_bg = "#82aaff",
}

M.base_16 = {
  base00 = "#222436",
  base01 = "#191b29",
  base02 = "#2f334d",
  base03 = "#545c7e",
  base04 = "#737aa2",
  base05 = "#c8d3f5",
  base06 = "#d0d9f7",
  base07 = "#d5d8fb",
  base08 = "#4fd6be",
  base09 = "#ff966c",
  base0A = "#86e1fc",
  base0B = "#c3e88d",
  base0C = "#b4f9f8",
  base0D = "#82aaff",
  base0E = "#c099ff",
  base0F = "#ff757f",
}

M.polish_hl = {
  treesitter = {
    ["@variable"] = { fg = M.base_16.base05 },
    ["@punctuation.bracket"] = { fg = M.base_30.purple },
    ["@function.method.call"] = { fg = M.base_30.red },
    ["@function.call"] = { fg = M.base_30.blue },
    ["@constant"] = { fg = M.base_30.orange },
    ["@variable.parameter"] = { fg = M.base_30.orange },
  },
}

M.type = "dark"

M = require("base46").override_theme(M, "tokyonight_moon")

return M
