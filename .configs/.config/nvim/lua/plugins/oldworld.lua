return {

	-- colorscheme
		
		
		"dgox16/oldworld.nvim", 
		lazy = false, 
		priority = 1000,


	
		-- this is the inital colorscheme of choice (oldworld)
		-- the other is https://github.com/dgox16/oldworld.nvim, however it needs some extra work because it has "fennel"
		-- remember the commas after each tuple of pulg-in

		config = function()
			-- colorscheme
			vim.cmd.colorscheme("oldworld") -- calling the colorscheme of choice to "work"
			--
		end




}


