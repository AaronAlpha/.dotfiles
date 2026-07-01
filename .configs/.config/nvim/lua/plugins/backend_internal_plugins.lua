return {
-- Note: have to add {} to each separate plugin if in ONE plugin file 


{
  -- neo-tree

    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    lazy = false, -- neo-tree will lazily load itself
		

		config = function()
			-- Neo-tree config
			require('neo-tree').setup({
				-- options go here
        
        -- following is to allow for hidden files to be shown; "shift+h" (H) allows to toggle the hidden files off
        filesystem = {
          filtered_items = {
            visible = true, -- This is what you want: If you set this to `true`, all "hide" just mean "dimmed out"
            hide_dotfiles = false,
            hide_gitignored = true,
          }, -- filtered items
        } -- filesystem
        
        , -- comma


      }) --require.setup


			vim.keymap.set('n', '<leader>o', ':Neotree filesystem reveal left<CR>', {}) -- changed '<leader>n' to '<C-n>' 

		end
  }

  , -- comma



  {
-- telescope

		'nvim-telescope/telescope.nvim', version = '*',
		dependencies = {
				'nvim-lua/plenary.nvim',
				-- optional but recommended
				{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
		},

		config = function()
		  local builtin = require('telescope.builtin')
		  vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
		  vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
		  vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
		  vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
		end
-- telescope
  }


  , -- comma





  {
-- tree-sitter
		
		'nvim-treesitter/nvim-treesitter',
		lazy = false,
		build = ':TSUpdate',
		

		config = function()
			require('nvim-treesitter').setup {
				-- Directory to install parsers and queries to (prepended to `runtimepath` to have priority)
				install_dir = vim.fn.stdpath('data') .. '/site'
			}
			
			require('nvim-treesitter').install { 'c', 'lua', 'java', 'python', 'swift' }

			vim.api.nvim_create_autocmd('FileType', {
				pattern = { '<filetype>' },
				callback = function() vim.treesitter.start() end,
			})

			vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"

		end
-- treesitter
  }



}
