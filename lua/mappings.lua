require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
map("n", "<C-e>", "$")
map("n", "<C-a>", "^")
map("i", "<C-a>", "<C-o>^", { noremap = true, silent = false })
map("i", "<C-e>", "<Esc>A", { noremap = true, silent = true })
map("v", "<C-a>", "^", { noremap = true, silent = false })
map("i", "<C-e>", "<Esc>A", { noremap = true, silent = true })

map("n", "<leader>w", ":w<CR>", { noremap = true, silent = false })
map("n", "<leader>q", ":q<CR>", { noremap = true, silent = false })
map("n", "<leader>wq", ":wq<CR>", { noremap = true, silent = false })

map("i", "<C-w>", "<C-o>db", { noremap = true, silent = false })
map("i", "<C-b>", "<C-o>dw", { noremap = true, silent = false })

map("n", "<leader>ff", ":lua require('telescope.builtin').find_files()<CR>")
map("n", "<leader>fb", ":lua require('telescope.builtin').buffers()<CR>")
map("n", "<leader>fh", ":lua require('telescope.builtin').help_tags()<CR>")

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<C-t>", "<cmd>NvimTreeToggle<CR>", { desc = "Nvimtree Toggle window" })

local opts = { noremap = true } -- Common options for mappings, to ensure they're non-recursive and direct

-- Setting up key mappings in a "lazy" style
map("n", "<leader>v", "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", opts)
map("n", "<leader>t", "<cmd>lua require('goto-preview').goto_preview_type_definition()<CR>", opts)
map("n", "<leader>r", "<cmd>lua require('goto-preview').goto_preview_references()<CR>", opts)
map("n", "<leader>i", "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>", opts)
map("n", "<leader>c", "<cmd>lua require('goto-preview').close_all_win()<CR>", opts)

-- For the custom Lua function in the last keymap, assuming 'opts' needs to be defined or adjusted
local customOpts = { noremap = true } -- Adjust as necessary, especially if 'opts' differs
map("n", "<leader>ca", function() vim.lsp.buf.code_action() end, customOpts)

map("n", "fm", "<cmd> LspZeroFormat <CR>")
