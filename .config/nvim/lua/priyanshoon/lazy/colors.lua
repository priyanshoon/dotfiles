function ColorMyPencils(color)
	color = color or "kanagawa"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
    {
        "priyanshoon/rosepine",
        name = "rosepine",
        config = function ()
            local rosepine = require("rose-pine")
            rosepine.setup({
                styles = {
                    bold = true,
                    italic = true,
                    transparency = false,
                },
            })
            -- ColorMyPencils("rose-pine-main")
        end
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        config = function ()
            local catppuccin = require("catppuccin")
            catppuccin.setup({
                flavour = "frappe", -- latte, frappe, macchiato, mocha
                background = { -- :h background
                    light = "latte",
                    dark = "frappe",
                },
            })
            ColorMyPencils("catppuccin")
        end
    }
}
