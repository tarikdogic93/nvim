vim.keymap.set("n", "-", "<cmd>Oil --float<CR>", { desc = "Open parent directory in Oil" })
vim.keymap.set("n", "gl", function()
	vim.diagnostic.open_float()
end, { desc = "Open diagnostics in float" })

vim.keymap.set("n", "<leader>cf", function()
	require("conform").format({ lsp_format = "fallback" })
end, { desc = "Format current file" })

vim.keymap.set("n", "<leader>et", function()
	local api = require("nvim-tree.api")
	if api.tree.is_visible() then
		api.tree.close()
	else
		vim.cmd("NvimTreeFindFile")
	end
end, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>ef", ":NvimTreeFocus<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>ec", ":NvimTreeCollapse<CR>", { noremap = true, silent = true })
