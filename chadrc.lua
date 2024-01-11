---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "monekai",
  theme_toggle = { "monekai" },

  hl_override = highlights.override,
  hl_add = highlights.add,

  tabufline = {
    enabled = true,
    lazyload = true,
    show_numbers = true,
  },
  statusline = {
    theme = "default",
  },
  nvdash = {
    load_on_startup = false,
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
