local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
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

require("lazy").setup({
  { 'williamboman/mason.nvim', build = ":MasonUpdate" },
  { 'neovim/nvim-lspconfig' },
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'hrsh7th/cmp-buffer' },
  { 'hrsh7th/cmp-path' },
  { 'hrsh7th/cmp-cmdline' },
  { 'hrsh7th/nvim-cmp' },              -- completion engine (lua)
  { 'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    dependencies = {{ 'echasnovski/mini.icons', opts = {} }},
  },
  { 'nvim-telescope/telescope.nvim',  -- fuzzy finder
      dependencies = { 'nvim-lua/plenary.nvim' }
  },
  { "nvim-tree/nvim-tree.lua" },     -- file explorer
  { "nvim-tree/nvim-web-devicons" }, -- dev icons
  { "mfussenegger/nvim-dap" },       -- debugging
  { "catppuccin/nvim", name = "catppuccin" },
  { "feline-nvim/feline.nvim"},      -- status line
  { "folke/tokyonight.nvim" },
  { "folke/which-key.nvim", lazy = true },
  "nvim-treesitter/nvim-treesitter", -- advanced syntax highlighting
  "HiPhish/rainbow-delimiters.nvim",
  { "folke/neoconf.nvim", cmd = "Neoconf" },
  "folke/neodev.nvim",               -- assist for wrinting NeoVim config in Lua
  "lewis6991/gitsigns.nvim",
  "hrsh7th/vim-vsnip",
  "hrsh7th/vim-vsnip-integ",
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  },
  "ray-x/guihua.lua",                -- tools for developing plugins
  "ray-x/navigator.lua",
  {
    "dstein64/vim-startuptime",
    -- lazy-load on a command
    cmd = "StartupTime",
    -- init is called during startup. Configuration for vim plugins typically should be set in an init function
    init = function()
      vim.g.startuptime_tries = 10
    end,
  },
  {
    "simrat39/rust-tools.nvim",
    dependencies = {
      "neovim/nvim-lspconfig"
    }
  },
  {
    "ray-x/go.nvim",
    dependencies = {  -- optional packages
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("go").setup()
    end,
    event = {"CmdlineEnter"},
    ft = {"go", 'gomod'},
    build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
  },
  {
    "OXY2DEV/markview.nvim",
    lazy = false,      -- Recommended
    -- ft = "markdown" -- If you decide to lazy-load anyway

    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons"
    }
  }
})
