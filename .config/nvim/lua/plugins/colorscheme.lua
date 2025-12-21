return {
	{
		"craftzdog/solarized-osaka.nvim",
		lazy = true,
		priority = 1000,
		opts = function()
			return {
				transparent = true,
				on_highlights = function(hl, c)
					hl.Visual = { bg = "#47FF9C", fg = "#011423" }
				end,
			}
		end,
	},
}
