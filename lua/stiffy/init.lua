require('stiffy.set')

vim.filetype.add({
    pattern = {
        [".*[aA][nN][cC][hH][oO][rR][fF][iI][lL][eE].*"] = "dockerfile",
    }
})

-- Lazy.nvim
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
require("lazy").setup(require("stiffy.plugins"))

-- Keymaps
require("stiffy.keymaps")
