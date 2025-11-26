-- AJUSTES BÁSICOS DE NEOVIM --

-- Mostrar números de línea
vim.opt.number = true
vim.opt.relativenumber = true 

-- Usar portapapeles del sistema (Ctrl+C / Ctrl+V fuera de nvim)
vim.opt.clipboard = "unnamedplus"

-- Indentación (4 espacios)
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Búsqueda inteligente
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Mouse habilitado
vim.opt.mouse = "a"

-- Esquema de color (simple y contrastado)
vim.cmd.colorscheme("habamax")
