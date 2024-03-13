function ColorMyPencils(color)
	color = color or "catppuccin"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
--     {
--         "folke/tokyonight.nvim",
--         name = "tokyonight",
--         config = function()
--             local tokyonight = require("tokyonight")
--             tokyonight.setup({
--                 style = "storm"
--             })
--             ColorMyPencils("tokyonight")
--         end,
--     },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        config = function()
            local catppuccino = require("catppuccin")
            catppuccino.setup({
                flavour = "macchiato", -- latte, frappe, macchiato, mocha
                background = { -- :h background
                    light = "latte",
                    dark = "macchiato",
                },
                dim_inactive = {
                    enabled = true, -- dims the background color of inactive window
                    shade = "dark",
                    percentage = 0, -- percentage of the shade to apply to the inactive window
                },
                show_end_of_buffer = true,
            })
            ColorMyPencils("catppuccin")
        end,
    }
}
