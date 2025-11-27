return {
	{
		"ellisonleao/gruvbox.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("plugins.colorscheme")
		end,
	},

	-- Statusline
	{
		"nvim-lualine/lualine.nvim",
		event = "VeryLazy",
		lazy = false,
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("plugins.lualine")
		end,
	},

	-- File explorer
	{
		"nvim-neo-tree/neo-tree.nvim",
		event = "VimEnter",
		branch = "v3.x",
		lazy = false,
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("plugins.neotree")
		end,
	},

	-- Bufferline
	{
		"akinsho/bufferline.nvim",
		event = "VeryLazy",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
			"famiu/bufdelete.nvim",
		},
		config = function()
			require("plugins.bufferline")
		end,
	},

	-- Indentasi
	{
		"shellRaining/hlchunk.nvim",
		event = "VeryLazy",
		config = function()
			require("plugins.indent")
		end,
	},

	-- Highlighting code
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		event = "VeryLazy",
		lazy = false,
		dependencies = {
			"windwp/nvim-ts-autotag",
		},
		config = function()
			require("plugins.treesitter")
		end,
	},

	-- Rainbow bracket
	{
		"HiPhish/rainbow-delimiters.nvim",
		event = "VeryLazy",
		config = function()
			require("plugins.rainbow")
		end,
	},

	-- Breadcrumbs
	{
		"Bekaboo/dropbar.nvim",
		event = "VeryLazy",
		config = function()
			require("plugins.dropbar")
		end,
	},

	-- Comment
	{
		"numToStr/Comment.nvim",
		event = "VeryLazy",
		dependencies = {
			"JoosepAlviste/nvim-ts-context-commentstring",
		},
		config = function()
			require("plugins.comment")
		end,
	},
	-- Colorizer
	{
		"catgoose/nvim-colorizer.lua",
		event = "VeryLazy",
		config = function()
			require("plugins.colorizer")
		end,
	},

	-- Autopair
	{
		"nvim-mini/mini.pairs",
		event = "VeryLazy",
		config = function()
			require("plugins.autopair")
		end,
	},

	-- Telescope
	{
		"nvim-telescope/telescope.nvim",
		event = "VeryLazy",
		tag = "v0.1.9",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-ui-select.nvim",
			"natecraddock/telescope-zf-native.nvim",
		},
		config = function()
			require("plugins.telescope")
		end,
	},

	-- Terminal
	{
		"akinsho/toggleterm.nvim",
		event = "VeryLazy",
		branch = "main",
		config = function()
			require("plugins.toggleterm")
		end,
	},

	-- Gitsigns
	{
		"lewis6991/gitsigns.nvim",
		lazy = true,
		enabled = vim.fn.executable("git") == 1,
		ft = "gitcommit",
		event = "BufRead",
		config = function()
			require("plugins.gitsigns")
		end,
	},

	-- Neogit
	{
		"NeogitOrg/neogit",
		cmd = "Neogit",
		dependencies = { "sindrets/diffview.nvim" },
		enabled = true,
		config = function()
			require("plugins.neogit")
		end,
	},

	-- Whichkey
	{
		"folke/which-key.nvim",
		lazy = true,
		keys = { "<leader>", '"', "'", "c", "v" },
		event = "VeryLazy",
		config = function()
			require("plugins.whichkey")
		end,
	},

	-- LSP
	{
		"neovim/nvim-lspconfig",
		event = "BufRead",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"hrsh7th/cmp-nvim-lsp",
		},
		config = function()
			require("plugins.lsp")
		end,
	},

	-- CMP
	{
		"hrsh7th/nvim-cmp",
		event = { "InsertEnter", "CmdlineEnter" },
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"saadparwaiz1/cmp_luasnip",
			{
				"L3MON4D3/LuaSnip",
				version = "v2.*",
				build = "make install_jsregexp",
				dependencies = {
					"rafamadriz/friendly-snippets",
					"honza/vim-snippets",
				},
			},
		},
		config = function()
			require("plugins.cmp")
		end,
	},

	-- Formatting
	{
		"nvimtools/none-ls.nvim",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			require("plugins.formating")
		end,
	},

	-- Trouble
	{
		"folke/trouble.nvim",
		cmd = "Trouble",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
			"nvim-telescope/telescope.nvim",
		},
		config = function()
			require("plugins.trouble")
		end,
	},

	-- Code runner
	{
		"CRAG666/code_runner.nvim",
		lazy = false,
		event = "BufRead",
		cmd = { "RunCode", "RunFile", "RunProject", "RunClose" },
		config = function()
			require("plugins.coderunner")
		end,
	},

	-- Dashboard
	{
		"goolord/alpha-nvim",
		event = "VimEnter",
		lazy = false,
		config = function()
			-- require("alpha").setup(require("alpha.themes.dashboard").config)
			require("plugins.alpha")
		end,
	},
}
