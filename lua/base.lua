vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.g.mapleader = " "
vim.opt.clipboard = 'unnamedplus' --クリップボードとレジスタを共有
vim.opt.shell = "zsh"
vim.opt.updatetime = 300
vim.opt.showtabline = 2
vim.opt.wrap = true --端までコードが届いた際に折り返す
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.backup = false

if vim.g.vscode then
  vim.keymap.set('n', 'ss', "<Cmd>call VSCodeNotify('workbench.action.splitEditor')<CR>")
  vim.keymap.set('n', 'sv', "<Cmd>call VSCodeNotify('workbench.action.splitEditorDown')<CR>")

  -- VSCodeで設定
  vim.keymap.set('n', 'sh', "<Cmd>call VSCodeNotify('workbench.action.focusPreviousGroup')<CR>")
  vim.keymap.set('n', 'sl', "<Cmd>call VSCodeNotify('workbench.action.focusNextGroup')<CR>")
else
  vim.opt.number = true
  vim.wo.number = true
  vim.wo.relativenumber = false
  vim.opt.mouse = 'a' --マウス操作を有効化
  vim.opt.title = true
  vim.opt.showcmd = true
  vim.opt.cmdheight = 2
  vim.opt.laststatus = 2
  vim.opt.expandtab = true
  vim.opt.scrolloff = 10
  vim.opt.shell = 'fish'
  vim.opt.inccommand = 'split'
  vim.opt.ignorecase = true
  vim.opt.smarttab = true
  vim.opt.breakindent = true
  vim.opt.shiftwidth = 2
  vim.opt.tabstop = 2
  vim.opt.wrap = true
  vim.opt.helplang = 'ja', 'en'
  vim.opt.termguicolors = true
  vim.opt.signcolumn = 'yes' --行数表示の横に余白を追加
  vim.opt.hidden = true
  vim.opt.swapfile = false --スワップファイルを生成しない
 -- float-transparent
  vim.opt.winblend = 5 --フロートウィンドウなどを若干透明に

  -- 画面分割
  vim.keymap.set('n', 'ss', ':split<Return><C-w>w')
  vim.keymap.set('n', 'sv', ':vsplit<Return><C-w>w')

  -- アクティブウィンドウの移動
  vim.keymap.set('n', 'sh', '<C-w>h')
  vim.keymap.set('n', 'sk', '<C-w>k')
  vim.keymap.set('n', 'sj', '<C-w>j')
  vim.keymap.set('n', 'sl', '<C-w>l')

  -- jjでEscする
  vim.keymap.set('i','jj','<Esc>')

  -- 設定ファイルを開く
  vim.keymap.set('n','<F1>',':edit $MYVIMRC<CR>')
end


