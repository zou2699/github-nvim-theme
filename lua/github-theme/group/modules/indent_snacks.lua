-- https://github.com/folke/snacks.nvim/blob/main/lua/snacks/indent.lua

local C = require('github-theme.lib.color')

local M = {}

---@param spec GhTheme.Spec
---@param _config GhTheme.Config.Options
---@param _opts GhTheme.Config.Module
function M.get(spec, _config, _opts)
  local p = spec.palette

  local fg = C(spec.bg1):blend(C(spec.fg1), 0.1):to_css()
  local black_fg = C(spec.bg1):blend(C(p.black.bright), 0.5):to_css()

  -- stylua: ignore
  ---@type table<string, GhTheme.HighlightGroup>
  return {
    SnacksIndent = { fg = fg },
    SnacksIndentScope = { fg = black_fg },
  }
end

return M
