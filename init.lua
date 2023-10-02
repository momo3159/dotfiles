-- Lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
print(lazypath)
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- basic setting
require('base')

local plugins;
if vim.g.vscode then
  plugins = {}
else
  plugins = {
    'nvim-tree/nvim-web-devicons',
    'nvim-lua/plenary.nvim',
 
    -- {'rmehri01/onenord.nvim',lazy = false, priority = 1500},
    {'sainnhe/everforest',lazy = false, priority = 1500 },
    'lifepillar/vim-colortemplate',
  
    -- coc.nvim
    {'neoclide/coc.nvim', branch = 'release'},
  
    -- syntax highlite
    {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
    {'JoosepAlviste/nvim-ts-context-commentstring'}, -- context-comment with treesitter
  
    -- file tab
    {'romgrk/barbar.nvim',dependencies = { 'nvim-web-devicons' }},
  
    -- file tree 
    {'lambdalisue/fern.vim',lazy = false, priority = 1000 },
    'lambdalisue/glyph-palette.vim', 
    {'TheLeoP/fern-renderer-web-devicons.nvim',dependencies = {'nvim-web-devicons'}}, 
  
    -- telescope
    {'nvim-telescope/telescope.nvim' },
    {'fannheyward/telescope-coc.nvim'},
    {
     "nvim-telescope/telescope-frecency.nvim",
     dependencies = {"kkharji/sqlite.lua"}
    },
  
    -- Git
    'dinhhuy258/git.nvim',
    {'tpope/vim-fugitive'},
    {'lewis6991/gitsigns.nvim'},
    
    -- front-end
    {'norcalli/nvim-colorizer.lua' },
    
    -- markdown
    { 
      "iamcco/markdown-preview.nvim",
      build = "cd app && npm install",
      setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
      ft = { "markdown" }, 
    },
  }
end

--Plugin list
require("lazy").setup(plugins) 
 

