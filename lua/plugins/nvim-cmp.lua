return {
    "hrsh7th/nvim-cmp",
    dependencies =  {'neovim/nvim-lspconfig'
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        {
            "L3MON4D3/LuaSnip", 
            version = "v2.*",
            build = "make install_jsregexp",
        },
        "saadparwaiz1/cmp_luasnip",
        "rafamadriz/friendly-snippets",
        "nvim-treesitter/nvim-treesitter",
        "onsails/lspkind.nvim",
        --"hrsh7th/cmp-nvim-lsp",
        --"hrsh7th/cmp-cmdline",
    },
config = funciton()
    local cmp = require("cmp")
    local has_luasnip, luasnip = pcall(require, 'luasnip')
    local lspkind = require("lspkind")
    local rhs = function(keys)
        return vim.api.nvim_replace_termcodes(keys, true, true, true)
    end
    local lsp_kinds = {
        Text = "󰉿",
        Method = "󰆧",
        Function = "󰊕",
        Constructor = "",
        Field = "󰜢",
        Variable = "󰀫",
        Class = "󰠱",
        Interface = "",
        Module = "",
        Property = "󰜢",
        Unit = "󰑭",
        Value = "󰎠",
        Enum = "",
        Keyword = "󰌋",
        Snippet = "",
        Color = "󰏘",
        File = "󰈙",
        Reference = "󰈇",
        Folder = "󰉋",
        EnumMember = "",
        Constant = "󰏿",
        Struct = "󰙅",
        Event = "",
        Operator = "󰆕",
        TypeParameter = "",
    }
    local column = function()
        local _line, col = unpack(vim.api.nvim_win_get_cursor(0))
        return col
    end
    
    local in_snippet = function()
        local session = require('luasnip.session')
        local node = session.current_nodes[vim.api.nvim_get_current_buf()]
        if not node then
            return false
        end
        local snippet = node.parent.snippet
        local snip_begin_pos, snip_end_pos = snippet.mark:pos_begin_end()
        local pos = vim.api.nvim_win_get_cursor(0)
        if pos[1] - 1 >= snip_begin_pos[1] and pos[1] - 1 <= snip_end_pos[1] then
            return true
        end
    end
    local in_whitespace = function()
        local col = column()
        return col == 0 or vim.api.nvim_get_current_line():sub(col, col):match('%s')
    end
    local in_leading_indent = function()
    local col = column()
    local line = vim.api.nvim_get_current_line()
    local prefix = line:sub(1, col)
    return prefix:find('^%s*$')
    end
end

}

