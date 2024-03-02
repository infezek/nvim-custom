local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]

local plugins = {
    {
        "nvim-tree/nvim-tree.lua",
        opts = {
            view = { side = "right" },
        },
    },
    {
        "nvim-treesitter/nvim-treesitter",
        opts = overrides.treesitter,
        dependencies = {
            "nvim-treesitter/nvim-treesitter-textobjects",
            {
                "nvim-treesitter/nvim-treesitter-context",
                config = function()
                    require "custom.configs.treesitter-context"
                end,
            },
            {
                "abecodes/tabout.nvim",
                event = "InsertEnter",
                config = function()
                    require "custom.configs.tabout"
                end,
            },
        },
    },
    {
        "phaazon/hop.nvim",
        event = "BufReadPost",
        branch = "v2",
        config = function()
            require "custom.configs.hop"
        end,
    },
    {
        "RRethy/vim-illuminate",
        event = "BufReadPost",
        config = function()
            require "custom.configs.illuminate"
        end,
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            {
                "jose-elias-alvarez/null-ls.nvim",
                config = function()
                    require "custom.configs.null-ls"
                end,
            },
        },
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end,
    },
    {
        "fatih/vim-go"
    },
    {
        "max397574/better-escape.nvim",
        event = "InsertEnter",
        config = function()
            require "custom.configs.better-escape"
        end,
    },
    {
        "rainbowhxch/accelerated-jk.nvim",
        event = "BufWinEnter",
        config = function()
            require "custom.configs.accelerated-jk"
        end,
    },
    {
        "mg979/vim-visual-multi",
        event = "BufReadPost",
        init = function()
            require "custom.configs.visual-multi"
        end,
    },
    {
        "tpope/vim-surround",
        event = "BufReadPost",
    },
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "lua-language-server",
                "html-lsp",
                "prettier",
                "stylua",
                "gopls",
                "terraform-ls",
                "gotests",
                "gotestsum",
                "goimports",
                "go-debug-adapter"
            },
        },
    }
}

return plugins
