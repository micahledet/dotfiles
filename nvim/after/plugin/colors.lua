-- see the highlight-group for the word under the cursor with :Inspect

vim.api.nvim_set_hl(0, "javaScriptReserved", { fg = "#ff7eb6", bold=true})
vim.api.nvim_set_hl(0, "@keyword.coroutine.javascript", { fg = "#33b1ff", bold=true})
vim.api.nvim_set_hl(0, "Statement", { fg = "#ff7eb6", bold=true})
vim.api.nvim_set_hl(0, "comment", { fg = "#898989", italic=true })
vim.api.nvim_set_hl(0, "@keyword.operator.javascript", { fg = "#be95ff"})
vim.api.nvim_set_hl(0, "@keyword.conditional.javascript", { fg = "#08bdba", bold=true})
--vim.api.nvim_set_hl(0, "comment", { fg = "#4F5258", italic=true })
vim.api.nvim_set_hl(0, "@lsp.mod.global.lua", { fg = "#ff7eb6" })
vim.api.nvim_set_hl(0, "markdownH1", { fg = "#b3f6c0", bold=true})
vim.api.nvim_set_hl(0, "markdownH1Delimiter", { fg = "#b3f6c0", bold=true})


--vim.api.nvim_set_hl(0, "LineNr", { bg = "#262626" })

-- rainbow delimiter settings
vim.api.nvim_set_hl(0, "RainbowDelimiterRed", { fg = "#ee5396" })
vim.api.nvim_set_hl(0, "RainbowDelimiterYellow", { fg = "#82cfff" })
vim.api.nvim_set_hl(0, "RainbowDelimiterBlue", { fg = "#be95ff" })
vim.api.nvim_set_hl(0, "RainbowDelimiterOrange", { fg = "#ffab91" })
vim.api.nvim_set_hl(0, "RainbowDelimiterGreen", { fg = "#08bdba" })
vim.api.nvim_set_hl(0, "RainbowDelimiterViolet", { fg = "#b3f6c0" })
vim.api.nvim_set_hl(0, "RainbowDelimiterCyan", { fg = "#3ddbd9" })



-- `RainbowDelimiterRed`
-- `RainbowDelimiterYellow`
-- `RainbowDelimiterBlue`
-- `RainbowDelimiterOrange`
-- `RainbowDelimiterGreen`
-- `RainbowDelimiterViolet`
-- `RainbowDelimiterCyan`

