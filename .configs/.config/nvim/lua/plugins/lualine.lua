return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },

    config = function()
      require('lualine').setup({
        options = {
          -- theme = 'dracula' -- 'normal' mode is in purple
          -- theme = 'modus-vivendi' -- 'normal' mode is in blue
          theme = 'horizon' -- 'normal' mode is in pinkish-red
          
          -- theme = 'cosmicink'
        }, 
        
        sections = {
		      lualine_x = { "encoding", { "fileformat", symbols = { unix = "" } }, "filetype" },
	      },



      })

    end

}
