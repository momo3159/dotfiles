if vim.g.vscode then 
  vim.keymap.set('n', '<leader>p', "<Cmd>call VSCodeNotify('markdown.showPreviewToSide')<CR>")
else
  vim.keymap.set('n', '<leader>p', ':MarkdownPreview<CR>')
end