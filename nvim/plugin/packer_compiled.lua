-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/gczcn/.cache/nvim/packer_hererocks/2.1.1694285958/share/lua/5.1/?.lua;/home/gczcn/.cache/nvim/packer_hererocks/2.1.1694285958/share/lua/5.1/?/init.lua;/home/gczcn/.cache/nvim/packer_hererocks/2.1.1694285958/lib/luarocks/rocks-5.1/?.lua;/home/gczcn/.cache/nvim/packer_hererocks/2.1.1694285958/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/gczcn/.cache/nvim/packer_hererocks/2.1.1694285958/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["SmoothCursor.nvim"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17smoothcursor\frequire\0" },
    loaded = true,
    path = "/home/gczcn/.local/share/nvim/site/pack/packer/start/SmoothCursor.nvim",
    url = "https://github.com/gen740/SmoothCursor.nvim"
  },
  breezy = {
    loaded = true,
    path = "/home/gczcn/.local/share/nvim/site/pack/packer/start/breezy",
    url = "https://github.com/fneu/breezy"
  },
  ["bufferline.nvim"] = {
    loaded = true,
    path = "/home/gczcn/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "/home/gczcn/.local/share/nvim/site/pack/packer/start/coc.nvim",
    url = "https://github.com/neoclide/coc.nvim"
  },
  ["cybu.nvim"] = {
    config = { "\27LJ\2\n�\2\0\0\a\0\18\0&6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�K\0\1\0009\2\3\1B\2\1\0016\2\4\0009\2\5\0029\2\6\2'\4\a\0'\5\b\0'\6\t\0B\2\4\0016\2\4\0009\2\5\0029\2\6\2'\4\a\0'\5\n\0'\6\v\0B\2\4\0016\2\4\0009\2\5\0029\2\6\0025\4\f\0'\5\r\0'\6\14\0B\2\4\0016\2\4\0009\2\5\0029\2\6\0025\4\15\0'\5\16\0'\6\17\0B\2\4\1K\0\1\0\29<plug>(CybuLastusedNext)\f<c-tab>\1\3\0\0\6n\6v\29<plug>(CybuLastusedPrev)\14<c-s-tab>\1\3\0\0\6n\6v\21<Plug>(CybuNext)\6J\21<Plug>(CybuPrev)\6K\6n\bset\vkeymap\bvim\nsetup\tcybu\frequire\npcall\0" },
    loaded = true,
    path = "/home/gczcn/.local/share/nvim/site/pack/packer/start/cybu.nvim",
    url = "https://github.com/ghillb/cybu.nvim"
  },
  ["gruvbox.nvim"] = {
    loaded = true,
    path = "/home/gczcn/.local/share/nvim/site/pack/packer/start/gruvbox.nvim",
    url = "https://github.com/ellisonleao/gruvbox.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/gczcn/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/gczcn/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["material.vim"] = {
    loaded = true,
    path = "/home/gczcn/.local/share/nvim/site/pack/packer/start/material.vim",
    url = "https://github.com/kaicataldo/material.vim"
  },
  ["nvim-numbertoggle"] = {
    loaded = true,
    path = "/home/gczcn/.local/share/nvim/site/pack/packer/start/nvim-numbertoggle",
    url = "https://github.com/sitiom/nvim-numbertoggle"
  },
  ["nvim-scrollbar"] = {
    loaded = true,
    path = "/home/gczcn/.local/share/nvim/site/pack/packer/start/nvim-scrollbar",
    url = "https://github.com/petertriho/nvim-scrollbar"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/gczcn/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/gczcn/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/gczcn/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/gczcn/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/gczcn/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["rainbow-delimiters.nvim"] = {
    loaded = true,
    path = "/home/gczcn/.local/share/nvim/site/pack/packer/start/rainbow-delimiters.nvim",
    url = "https://github.com/HiPhish/rainbow-delimiters.nvim"
  },
  ["sentiment.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14sentiment\frequire\0" },
    loaded = true,
    path = "/home/gczcn/.local/share/nvim/site/pack/packer/start/sentiment.nvim",
    url = "https://github.com/utilyre/sentiment.nvim"
  },
  srcery = {
    loaded = true,
    path = "/home/gczcn/.local/share/nvim/site/pack/packer/start/srcery",
    url = "https://github.com/srcery-colors/srcery-vim"
  },
  ["startup.nvim"] = {
    config = { "\27LJ\2\nL\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\ntheme\14dashboard\nsetup\fstartup\frequire\0" },
    loaded = true,
    path = "/home/gczcn/.local/share/nvim/site/pack/packer/start/startup.nvim",
    url = "https://github.com/startup-nvim/startup.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/gczcn/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/gczcn/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["vim-quickrun"] = {
    loaded = true,
    path = "/home/gczcn/.local/share/nvim/site/pack/packer/start/vim-quickrun",
    url = "https://github.com/thinca/vim-quickrun"
  },
  ["vim-terminal-help"] = {
    loaded = true,
    path = "/home/gczcn/.local/share/nvim/site/pack/packer/start/vim-terminal-help",
    url = "https://github.com/skywind3000/vim-terminal-help"
  },
  ["vscode.nvim"] = {
    loaded = true,
    path = "/home/gczcn/.local/share/nvim/site/pack/packer/start/vscode.nvim",
    url = "https://github.com/Mofiqul/vscode.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: startup.nvim
time([[Config for startup.nvim]], true)
try_loadstring("\27LJ\2\nL\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\ntheme\14dashboard\nsetup\fstartup\frequire\0", "config", "startup.nvim")
time([[Config for startup.nvim]], false)
-- Config for: SmoothCursor.nvim
time([[Config for SmoothCursor.nvim]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17smoothcursor\frequire\0", "config", "SmoothCursor.nvim")
time([[Config for SmoothCursor.nvim]], false)
-- Config for: sentiment.nvim
time([[Config for sentiment.nvim]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14sentiment\frequire\0", "config", "sentiment.nvim")
time([[Config for sentiment.nvim]], false)
-- Config for: cybu.nvim
time([[Config for cybu.nvim]], true)
try_loadstring("\27LJ\2\n�\2\0\0\a\0\18\0&6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�K\0\1\0009\2\3\1B\2\1\0016\2\4\0009\2\5\0029\2\6\2'\4\a\0'\5\b\0'\6\t\0B\2\4\0016\2\4\0009\2\5\0029\2\6\2'\4\a\0'\5\n\0'\6\v\0B\2\4\0016\2\4\0009\2\5\0029\2\6\0025\4\f\0'\5\r\0'\6\14\0B\2\4\0016\2\4\0009\2\5\0029\2\6\0025\4\15\0'\5\16\0'\6\17\0B\2\4\1K\0\1\0\29<plug>(CybuLastusedNext)\f<c-tab>\1\3\0\0\6n\6v\29<plug>(CybuLastusedPrev)\14<c-s-tab>\1\3\0\0\6n\6v\21<Plug>(CybuNext)\6J\21<Plug>(CybuPrev)\6K\6n\bset\vkeymap\bvim\nsetup\tcybu\frequire\npcall\0", "config", "cybu.nvim")
time([[Config for cybu.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
