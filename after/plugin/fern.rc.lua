if vim.g.vscode then
  -- vscode で設定
  -- vim.keymap.set('n', '<C-n>', "<Cmd>call VSCodeNotify('workbench.action.toggleSidebarVisibility')<CR>")
else
  vim.g["fern#renderer"] = "nvim-web-devicons"
  vim.g["fern#default_hidden"]= 1

  vim.cmd([[
    augroup my-glyph-palette
      autocmd! *
      autocmd FileType fern call glyph_palette#apply()
      autocmd FileType nerdtree,startify call glyph_palette#apply()
    augroup END
  ]])

  vim.keymap.set('n','<C-n>',':Fern . -reveal=%<CR>',{silent = true,noremap = true})
end