function ColorMyPencils(color)
	color = color or "terafox"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
    {
        "rebelot/kanagawa.nvim",
        name = "kanagawa",
        config = function()
            local kanagawa = require('kanagawa')
            kanagawa.setup({
                transparent = true,
                theme = "dragon",              -- Load "wave" theme when 'background' option is not set
                background = {               -- map the value of 'background' option to a theme
                    dark = "dragon",           -- try "dragon" !
                    light = "lotus"
                },
            })
            vim.cmd("colorscheme kanagawa")
        end,
    }
}
