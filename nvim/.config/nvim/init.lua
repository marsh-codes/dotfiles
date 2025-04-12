vim.opt.mouse = ""

-- Set leader keys
vim.g.mapleader = " "      -- Set the global leader key to space
vim.g.maplocalleader = " " -- Set the local leader key to space (optional)

-- Lazy.nvim bootstrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Load additional configurations
require("vim-options")           -- Ensure this file exists and is configured
require("lazy").setup("plugins") -- Load plugins using lazy.nvim

-- Disable arrow keys in normal, insert, and visual modes
vim.api.nvim_set_keymap("n", "<Up>", "<Nop>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Down>", "<Nop>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Left>", "<Nop>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Right>", "<Nop>", { noremap = true })

vim.api.nvim_set_keymap("i", "<Up>", "<Nop>", { noremap = true })
vim.api.nvim_set_keymap("i", "<Down>", "<Nop>", { noremap = true })
vim.api.nvim_set_keymap("i", "<Left>", "<Nop>", { noremap = true })
vim.api.nvim_set_keymap("i", "<Right>", "<Nop>", { noremap = true })

vim.api.nvim_set_keymap("v", "<Up>", "<Nop>", { noremap = true })
vim.api.nvim_set_keymap("v", "<Down>", "<Nop>", { noremap = true })
vim.api.nvim_set_keymap("v", "<Left>", "<Nop>", { noremap = true })
vim.api.nvim_set_keymap("v", "<Right>", "<Nop>", { noremap = true })

-- Copy highlighted text to the system clipboard using <leader>y in visual mode
vim.api.nvim_set_keymap("v", "<leader>y", '"+y', { noremap = true, silent = true })

-- Paste from the system clipboard using <leader>s in normal mode
vim.api.nvim_set_keymap('n', '<leader>s', '"+s', { noremap = true, silent = true })

-- Optionally, map it for visual mode as well
vim.api.nvim_set_keymap('v', '<leader>s', '"+s', { noremap = true, silent = true })
