-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- 1. Lo más importante: Desconectar el portapapeles del sistema para que no bloquee
-- (Seguirás pudiendo copiar/pegar dentro de Neovim, pero no enviará info a Fedora en cada acción)
vim.opt.clipboard = ""

-- 2. Matar el escaneo de paréntesis mientras escribes
-- Esto evita que Neovim lea todo el archivo cada vez que pones una letra
vim.g.loaded_matchparen = 1

-- 3. Aumentar el tiempo de refresco
-- LazyVim lo trae en 200ms. Si escribes rápido, Neovim intenta actualizar la UI demasiado seguido.
-- Subirlo a 400ms da un respiro a la CPU mientras estás en ráfaga de escritura.
vim.opt.updatetime = 400
