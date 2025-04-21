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

vim.g.mapleader = " " -- the leader key is used in many keymaps, 


local plugins = {
    {"nvim-lua/plenary.nvim"},
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
    {"nvim-telescope/telescope.nvim",
        --tag = '0.1.6',
        requires = { {"nvim-lua/plenary.nvim"}}},
    {"nvim-telescope/telescope-file-browser.nvim",
        dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }},
    --{"ThePrimeagen/harpoon", 
        --branch = "harpoon2",
        --dependencies = {"nvim-lua/plenary.nvim"}},
    {"mbbill/undotree"},
    {"tpope/vim-fugitive"},

    --lsp configuration
    {"neovim/nvim-lspconfig"}, --lsp configs
    {"onsails/lspkind.nvim"}, -- pictograms and menu formatting
    {"hrsh7th/cmp-nvim-lsp"}, -- autocompletion
    {"hrsh7th/nvim-cmp"}, --additional autocompletion
    {"L3MON4D3/LuaSnip",
        --version = "v2.*",
        build = "make install_jsregexp",
        dependencies = {'saadparwaiz1/cmp_luasnip','rafamadriz/friendly-snippets'}}, --snippet engine
    {"williamboman/mason.nvim"}, --lsp package manager
    {"williamboman/mason-lspconfig.nvim"}, --lsp package manager configs

    --color scheme 
    {'nyoom-engineering/oxocarbon.nvim'},

    -- indent lines 
    { "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {} },

    -- rainbow delimiters
    { 'HiPhish/rainbow-delimiters.nvim' },

    -- Auto Pairs
    { "windwp/nvim-autopairs" },

    -- lualine status line replacement
    {'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }},

    -- HTTP client
    { "rest-nvim/rest.nvim",
        dependencies = { "nvim-treesitter/nvim-treesitter",
            opts = function (_, opts)
            opts.ensure_installed = opts.ensure_installed or {}
            table.insert(opts.ensure_installed, "http")
            end,
        },
    }
}

require("lazy").setup(plugins, {})
