local cmp = require("cmp")
local lspkind = require('lspkind')
require('luasnip.loaders.from_vscode').lazy_load()

local function get_custom_border()
    return cmp.config.window.bordered({
        winhighlight = cmp.config.window.bordered().winhighlight:gsub(':FloatBorder', ':CustomFloatBorder'),
        scrollbar = false,
    })
end

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    window = {
        -- uncomment the following if you want bordered completion options
        -- completion = cmp.config.window.bordered(),
        -- documentation = cmp.config.window.bordered(),
        completion = get_custom_border(),
        documentation = get_custom_border(),
    },
    formatting = {
        -- truncate characters in type information
        format = lspkind.cmp_format({
            with_text = true, -- do not show text alongside icons
            maxwidth = 50,
            before = function(entry, vim_item)
                local m = vim_item.menu and vim_item.menu or ""
                if #m > 20 then
                    vim_item.menu = string.sub(m, 1, 20) .. "..."
                end
            return vim_item
            end,
    }),
    },
    mapping = cmp.mapping.preset.insert({
	    ['<C-p>'] = cmp.mapping.select_prev_item({select = true}),
	    ['<C-n>'] = cmp.mapping.select_next_item({select = true}),
	    ['<C-Tab>'] = cmp.mapping.complete(),
	    -- ['<C-y>'] = cmp.mapping.confirm({select = true}),
	    ['<CR>'] = cmp.mapping.confirm({select = true})
    }),
    sources = cmp.config.sources({
        {name = 'nvim_lsp'},
        {name = 'luasnip'},
    }, {
        {name = 'buffer'},
    })
})
