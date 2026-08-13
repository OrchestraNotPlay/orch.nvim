require("mason").setup({})

local cmp = require('blink.cmp')
cmp.build():pwait()
cmp.setup()
