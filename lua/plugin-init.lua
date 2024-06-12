local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
local uv =vim.uv or vim.loop

vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
	{ 'preservim/nerdtree' },
	{ 'nvim-tree/nvim-web-devicons' },
	{
		"ibhagwan/fzf-lua",
		-- optional for icon support
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			-- calling `setup` is optional for customization
			require("fzf-lua").setup({})
		end
},
	{ 'neoclide/coc.nvim', branch='release' },
	  "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html", "css", "c_sharp" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },
        })
    end,
	{ 'diegoulloao/neofusion.nvim' },
	{ 'andymass/vim-matchup'},
	{ 'dense-analysis/ale' },
	{
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
    -- use opts = {} for passing setup options
    -- this is equalent to setup({}) function
},
{ 'vim-airline/vim-airline' },
{ 'vim-airline/vim-airline-themes' }
})

require('tree-sitter')
