-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- Python debugging
--::vim.g.python3_host_prog = "/Users/pradiplamichhane/OfficeProject/ip-author/drafting-ai/services/venv/bin/python"

vim.opt.clipboard:remove("unnamedplus")
vim.keymap.set({ "n", "v" }, "yk", '"+y', { desc = "Yank to system clipboard" })
vim.keymap.set("n", "ykk", '"+yy', { desc = "Yank line to system clipboard" })
vim.keymap.set("n", "pk", '"+p', { desc = "Put from system clipboard after" })


-- Delete to system clipboard
vim.keymap.set({ "n", "v" }, "dk", '"+d', { desc = "Delete to system clipboard" })
vim.keymap.set("n", "dkk", '"+dd', { desc = "Delete line to system clipboard" })
vim.keymap.set({ "n", "v" }, "xk", '"+x', { desc = "Delete character to system clipboard" })

--disable autoformat
vim.g.autoformat = false

-- then you need to set the option below.
vim.g.lazyvim_picker = "telescope"

-- Custom keybinding for live_grep
vim.api.nvim_set_keymap('n', '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<CR>", { noremap = true, silent = true })


