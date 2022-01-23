require('user.dap.settings.dap-go').setup()
require("dapui").setup()

vim.cmd([[ command! DBGUI execute 'lua require("dapui").toggle()' ]])
vim.cmd([[ command! DBGUIOpen execute 'lua require("dapui").open()' ]])
vim.cmd([[ command! DBGUIClose execute 'lua require("dapui").close()' ]])

