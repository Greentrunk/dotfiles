local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Install your plugins here
return packer.startup(function(use)
	-- Core plugins here
	use("wbthomason/packer.nvim") -- Have packer manage itself
	use("nvim-lua/popup.nvim") -- An implementation of the Popup API from vim in Neovim
	use("nvim-lua/plenary.nvim") -- Useful lua functions used by lots of plugins
	use("windwp/nvim-autopairs") -- auto pairs for completions
	use("numToStr/Comment.nvim") -- easy commenting
	use("lewis6991/impatient.nvim")
	use("MunifTanjim/nui.nvim") -- ui component framework
	use("rcarriga/nvim-notify") -- notifications
	use("mfussenegger/nvim-dap") -- debugging

	-- Colorschemes
	use("ellisonleao/gruvbox.nvim")

	-- cmp plugins
	use("hrsh7th/nvim-cmp") -- The completion plugin
	use("hrsh7th/cmp-buffer") -- buffer completions
	use("hrsh7th/cmp-path") -- path completions
	use("hrsh7th/cmp-cmdline") -- cmdline completions
	use("saadparwaiz1/cmp_luasnip") -- snippet completions
	use("hrsh7th/cmp-nvim-lsp") -- lsp completions
	use("hrsh7th/cmp-nvim-lua") -- nvim lua completions
	use("akinsho/bufferline.nvim") -- movable buffers
	use("moll/vim-bbye")

	-- snippets
	use("L3MON4D3/LuaSnip") --snippet engine
	use("rafamadriz/friendly-snippets") -- a bunch of snippets to use

	-- LSP
	use("neovim/nvim-lspconfig") -- enable LSP
	use("williamboman/mason.nvim") -- simple to use language server installer
	use("williamboman/mason-lspconfig.nvim") -- simple to use language server installer
	use("jose-elias-alvarez/null-ls.nvim") -- linting, formatting, and more
	use({
		"https://git.sr.ht/~whynothugo/lsp_lines.nvim",
		config = function()
			require("lsp_lines").setup()
		end,
	})
	use("simrat39/rust-tools.nvim") -- extra rust tools

	-- Telescope
	use("nvim-telescope/telescope.nvim") -- fuzzy finder for files and text grep
	use("nvim-telescope/telescope-media-files.nvim") -- show media in Telescope prompt
	use("ahmedkhalf/project.nvim")

	-- Cheatsheet
	use({
		"sudormrfbin/cheatsheet.nvim",

		requires = {
			{ "nvim-telescope/telescope.nvim" },
			{ "nvim-lua/popup.nvim" },
			{ "nvim-lua/plenary.nvim" },
		},
	})

	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})
	use("p00f/nvim-ts-rainbow")
	use("nvim-treesitter/playground")
	use("JoosepAlviste/nvim-ts-context-commentstring")
	-- Optional Twilight
	use({
		"folke/twilight.nvim",
		config = function()
			require("twilight").setup({
				alpha = 0.75,
				context = 20,
			})
		end,
	})

	-- git
	use("lewis6991/gitsigns.nvim")

	-- nvim tree
	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons",
		},
		tag = "nightly",
	})

	-- lualine
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})

	-- toggleterm
	use({ "akinsho/toggleterm.nvim", tag = "*" })

	-- indent_blankline
	use("lukas-reineke/indent-blankline.nvim")

	-- alpha
	use("goolord/alpha-nvim")

	-- which-key
	use("folke/which-key.nvim")

	-- leap
	use("ggandor/leap.nvim")

	-- image
	use({
		"samodostal/image.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
		},
	})

	-- noice
	use("folke/noice.nvim")

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
