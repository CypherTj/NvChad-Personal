return {
  'tpope/vim-sleuth',
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre' -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
  			"lua-language-server", "stylua", "html-lsp", "css-lsp",
        "vscode-solidity-server", "json-lsp", "eslint-lsp", "typescript-language-server", --lsps
        "eslint_d", "ts-standard", -- linters
        "prettierd", -- formatter
  		},
  	},
  },
  
  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
      -- Autoinstall languages that are not installed
      auto_install = true,
      highlight = {
        enable = true,
        -- Some languages depend on vim's regex highlighting system (such as Ruby) for indent rules.
        --  If you are experiencing weird indenting issues, add the language to
        --  the list of additional_vim_regex_highlighting and disabled languages for indent.
        additional_vim_regex_highlighting = { 'ruby' },
      },
      indent = { enable = true, disable = { 'ruby' } },
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css", "javascript", "typescript", "json", "tsx",
  		},
  	},
  },

  {
    "jiaoshijie/undotree",
    dependencies = "nvim-lua/plenary.nvim",
    config = true,
    keys = { -- load the plugin only when using it's keybinding:
      { "<leader>u", "<cmd>lua require('undotree').toggle()<cr>" },
    },
  },
  
  {
    'akinsho/toggleterm.nvim', 
    tag = "v2.10.0", 
    init = function()
      require("configs.toggleterm-conf")
    end
  },
  
}
