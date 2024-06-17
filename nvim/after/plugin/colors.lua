-- see the highlight-group for the word under the cursor with :Inspect

vim.api.nvim_set_hl(0, "@keyword.javascript", { fg = "#ff7eb6", bold=true})
vim.api.nvim_set_hl(0, "@comment", { fg = "#be95ff" })
vim.api.nvim_set_hl(0, "@lsp.mod.global.lua", { fg = "#ff7eb6" })

