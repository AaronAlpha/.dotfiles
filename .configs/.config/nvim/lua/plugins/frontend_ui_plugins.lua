return {

-- Note: have to add {} to each separate plugin if in ONE plugin file 




	-- colorschemes (oldworld; oxocarbon)
		
  --{	
  -- oldworld colorscheme
  	--"dgox16/oldworld.nvim", 
		--lazy = false, 
	  --priority = 1000,

    --config = function()
		  -- colorscheme
			--vim.cmd.colorscheme("oldworld") -- calling the colorscheme of choice to "work"
			--
		--end,
  --oldworld
--}



{ 
  -- oxocarbon colorscheme - https://github.com/dgox16/oldworld.nvim 
  "nyoom-engineering/oxocarbon.nvim", 
  lazy = false, 
  priority = 1000, 
  config = function() 
    vim.opt.background = "dark" -- set this to dark or light 
    vim.cmd("colorscheme oxocarbon") 
  
  end

  -- oxocarbon 
} 



, -- comma separating the coloschemes (above) to the lualine (below) 




{ -- lualine
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


}


