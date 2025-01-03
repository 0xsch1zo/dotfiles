require("dap-go").setup()
require("dapui").setup()
local dap, dapui = require("dap"), require("dapui")
dap.listeners.before.attach.dapui_config = function()
    dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
    dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
    dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
    dapui.close()
end

require("lazydev").setup({
    enabled = true,
    debug = false,
    library = {
        "nvim-dap-ui"
    },
    runtime = vim.env.VIMRUNTIME --[[@as string]],
    integrations = {
        lspconfig = true,
        cmp = true,
        coq = false,
    },
})


vim.keymap.set('n', '<leader>db', dap.toggle_breakpoint, {})
vim.keymap.set('n', '<leader>dc', dap.continue, {})
vim.keymap.set('n', '<F6>', dap.step_over, {})
vim.keymap.set('n', '<F7>', dap.step_into, {})
vim.keymap.set('n', '<F8>', dap.step_out, {})
