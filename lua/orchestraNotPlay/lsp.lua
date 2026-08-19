require("mason").setup({})

local cmp = require('blink.cmp')
cmp.build():pwait()
cmp.setup()

vim.diagnostic.config({
    virtual_text = true
})
