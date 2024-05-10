-- $HOME/.config/nvim/init.lua

--[[
  ___ ___ __  __   _   ___  ___              
 | _ \ __|  \/  | /_\ | _ \/ __|             
 |   / _|| |\/| |/ _ \|  _/\__ \             
 |_|_\___|_|__|_/_/_\_\_|  |___/             
  / _ \| _ \_   _/ __|                       
 | (_) |  _/ | | \__ \                       
  \___/|_| _ |_|_|___/   ___ __  __ ___  ___ 
   /_\| | | |_   _/ _ \ / __|  \/  |   \/ __|
  / _ \ |_| | | || (_) | (__| |\/| | |) \__ \
 /_/ \_\___/  |_| \___/ \___|_|  |_|___/|___/

 --]]

require("core.keymaps")
require("core.options")
require("core.autocmds")

--[[
  _      _    ______   __                       
 | |    /_\  |_  /\ \ / /                       
 | |__ / _ \  / /  \ V /                        
 |____/_/_\_\/___|__|_|___ _____ ___    _   ___ 
 | _ )/ _ \ / _ \_   _/ __|_   _| _ \  /_\ | _ \
 | _ \ (_) | (_) || | \__ \ | | |   / / _ \|  _/
 |___/\___/ \___/ |_| |___/ |_| |_|_\/_/ \_\_|  
                                                
--]]

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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

--[[
  _      _    ______   __         
 | |    /_\  |_  /\ \ / /         
 | |__ / _ \  / /  \ V /          
 |____/_/ \_\/___|__|_|_ _  _ ___ 
 | _ \ | | | | |/ __|_ _| \| / __|
 |  _/ |_| |_| | (_ || || .` \__ \
 |_| |____\___/ \___|___|_|\_|___/
                                  
--]]

require("lazy").setup({

      --[[
     'neovim/nvim-lspconfig'
     'williamboman/mason'
     'williamboman/mason-lspconfig'
     'j-hui/fidget'
     'folke/neodev'
      --]]
    { import = "plugins.lsp" },


     --[[
     'hrsh7th/nvim-cmp'
     'L3MON4D3/LuaSnip',
     'saadparwaiz1/cmp_luasnip',
     'hrsh7th/cmp-nvim-lsp',
     'hrsh7th/cmp-path',
     'rafamadriz/friendly-snippets',
      --]]
    { import = "plugins.nvim-cmp" },

    -- 'goolord/alpha-nvim'
    { import = "plugins.alpha-nvim" },

    -- 'eandrju/cellular-automaton'
    { import = "plugins.cellular-automaton" },

    -- 'numToStr/Comment'
    { import = "plugins.comment" },

    -- 'lewis6991/gitsigns'
    { import = "plugins.gitsigns" },

    -- 'theprimeagen/harpoon'
    { import = "plugins.harpoon" },

    -- 'lukas-reinke/indent-blankline'
    { import = "plugins.indent-blankline" },

    -- 'nvim-lualine/lualine'
    { import = "plugins.lualine" },

    -- 'nvim-tree/nvim-web-devicons'
    { import = "plugins.nvim-webdevicons" },

    -- 'nvim-tree/nvim-tree'
    { import = "plugins.nvim-tree" },

    -- 'nvim-telescope/telescope'
    { import = "plugins.telescope" },

    -- 'rose-pine/neovim'
    { import = "plugins.rose-pine" },

    -- 'ellisonleao/gruvbox'
    { import = "plugins.gruvbox" },

    -- 'folke/tokyonight'
    { import = "plugins.tokyonight" },

    -- 'nvim-treesitter/nvim-treesitter'
    { import = "plugins.treesitter" },

    -- 'tpope/vim-fugitive'
    { import = "plugins.vim-fugitive" },

    -- 'preservim/vim-markdown'
    { import = "plugins.vim-markdown" },

    -- 'tpope/vim-rhubarb'
    { import = "plugins.vim-rhubarb" },

    -- 'tpope/vim-sleuth'
    { import = "plugins.vim-sleuth" },

    -- 'folke/which-key'
    { import = "plugins.which-key" },
})
--[[
  _    ___ ___               
 | |  / __| _ \              
 | |__\__ \  _/              
 |____|___/_|  _ ___ ___ ___ 
  / __/ _ \| \| | __|_ _/ __|
 | (_| (_) | .` | _| | | (_ |
  \___\___/|_|\_|_| |___\___|
                                                                                          
--]]

require("lsp.lspconf").setup()
require("lsp.keymaps").setup()

--[[
  _____ _  _ ___ __  __ ___ 
 |_   _| || | __|  \/  | __|
   | | | __ | _|| |\/| | _| 
   |_| |_||_|___|_|  |_|___|
                            
--]]

vim.cmd[[colorscheme rose-pine]]

-- tabspace=2 softtabstop=2 shiftwidth=2
-- vim: ts=2 sts=2 sw=2 et
