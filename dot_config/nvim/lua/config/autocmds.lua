-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
-- Enable spell checking automatically for .tex and .txt files
--
vim.api.nvim_set_hl(0, "VirtColumn", { bg = "#802080" })

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "tex", "text", "markdown", "plaintex" },
  callback = function()
    vim.opt_local.spell = true
    vim.opt_local.spelllang = { "en_us" } -- add more like {"en_us", "es"} if needed

    -- Set text width and color column at 80
    vim.opt_local.textwidth = 80
    vim.opt_local.colorcolumn = "80"

    -- Make formatting behave nicely in prose
    vim.opt_local.formatoptions:append("t")
  end,
})
