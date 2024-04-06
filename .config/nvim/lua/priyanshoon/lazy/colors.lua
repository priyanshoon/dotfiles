function ColorMyPencils(color)
	color = color or "rose-pine"
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
        end,
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function ()
            local rosepine = require("rose-pine")
            rosepine.setup({
                dim_inactive_windows = true,
                enable = {
                    terminal = true,
                    legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
                    migrations = true, -- Handle deprecated options automatically
                },
                styles = {
                    bold = false,
                    italic = true,
                    transparency = false,
                },
            })
            ColorMyPencils("rose-pine")
        end
    },
}
