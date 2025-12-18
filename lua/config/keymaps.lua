-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- COPIAR AL SISTEMA (Fedora)
-- Al presionar <leader>y (Espacio + y), copiaremos al portapapeles del sistema (+)
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Copiar al sistema" })

-- PEGAR DEL SISTEMA (Fedora)
-- Al presionar <leader>p (Espacio + p), pegaremos lo que traigas del navegador
vim.keymap.set("n", "<leader>p", [["+p]], { desc = "Pegar del sistema" })

-- EXTRA: Copiar todo el archivo al sistema con <leader>Y
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Copiar línea al sistema" })

-- Mapear 'jj' para que funcione como Esc en Insert Mode
vim.keymap.set("i", "jj", "<Esc>", { desc = "Salir a Normal Mode" })
