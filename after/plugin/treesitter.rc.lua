if vim.g.vscode then 
else
  local status, treesitter = pcall(require, "nvim-treesitter.configs")
  if (not status) then return end
  
  treesitter.setup {
    ensure_installed = {
      "c","cpp","rust", 
      "java","scala",
      "html","css","scss",
      "javascript","typescript","tsx",
      "json","yaml","toml",
      "vim","dockerfile",
      "bash",
      "gitignore",
      "markdown",
    },
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false, -- catpuucin用
      disable = {},
    },
  	indent ={
  		enable =true,
      disable ={"html"},
  	},
    autotag = {
      enable = true,
    },
    context_commentstring = {
      enable = true,
      enable_autocmd = false,
    },
  }
end