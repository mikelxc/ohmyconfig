vim.cmd[[command W :execute ':silent w !sudo tee % > /dev/null' | :edit!]]
vim.cmd[[command Sync :PackerSync]]
