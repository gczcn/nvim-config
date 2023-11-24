require('lualine').setup({
  options = {
    theme = 'auto'
  }
})
local function window()
  return vim.api.nvim_win_get_number(0)
end

require 'lualine'.setup {
  sections = {
    lualine_x = { window },
  }
}
--require 'lualine'.setup {
--  sections = {
--    lualine_x = {
--      {
--        'fileformat',
--        icons_enabled = true,
--        symbols = {
--          unix = 'LF',
--          dos = 'CRLF',
--          mac = 'CR',
--        },
--      },
--    },
--  },
--}



--
--

require('lualine').setup {
  options = {
    --theme = bubbles_theme,
    component_separators = '',
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = { 'filename' },
    --lualine_b = { 'filename' },
    lualine_c = { 'filetype', 'fileformat' },
    --lualine_x = { '' },
    lualine_y = { 'progress' },
    ualine_z = {
      { 'location', separator = { right = '' }, left_padding = 2 },
    },
  },
  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = { 'auto' },
    lualine_c = {},
    lualine_x = {},
    lualine_y = { 'progress' },
    lualine_z = { 'location' },
  },
  tabline = {},
  extensions = {},
}
--1231231
