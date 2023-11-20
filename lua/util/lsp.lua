local keymap = vim.keymap

local M = {}

--set keymaps in the active lsp server
M.on_attach = function(client, bufnr)
	local opts = { noremap = true, silent = true, buffer = bufnr }

	-- set keybinds
	keymap.set("n", "gf", "<cmd>Lspsaga lsp_finder<CR>", opts)
	keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()", opts)
	keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts)
	keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()", opts)
	keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts)
	keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts)
	keymap.set("n", "<leader>D", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)
	keymap.set("n", "<leader>d", "<cmd>Lspsaga show_cursor_diagnistics<CR>", opts)
	keymap.set("n", "<leader>nd", "<cmd>Lspsaga diagnistic_jump_next<CR>", opts)
	keymap.set("n", "<leader>pd", "<cmd>Lspsaga diagnistic_jump_prev<CR>", opts)

  if client.name == "pyright" then
     keymap.set("n", "<Leader>oi", "<cmd>PyrightOrganizeImports<CR>", opts)
  end
end

M.diagnostic_signs = { Error = " ", Warn = " ", Hint = "󰛨", Info = "" }


return M
