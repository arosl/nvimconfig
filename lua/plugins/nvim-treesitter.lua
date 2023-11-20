local config = function()
  require("nvim-treesitter.configs").setup({
    indent = {
      enable =true,
    },
    autotag = {
      enable =true,
    },
    ensure_installed = {
      "awk",
      "bash",
      "comment",
      "css",
      "csv",
      "diff",
      "elixir",
      "git_config",
      "git_rebase",
      "gitcommit",
      "gitignore",
      "go",
      "gomod",
      "html",
      "http",
      "javascript",
      "json",
      "lua",
      "make",
      "markdown",
      "markdown_inline",
      "nix",
      "perl",
      "php",
      "puppet",
      "python",
      "regex",
      "rst",
      "sql",
      "ssh_config",
      "typescript",
      "xml",
      "yaml",
    },
    auto_install = true,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = true,
    },
  })
end

return {
      "nvim-treesitter/nvim-treesitter",
      lazy = false,
      config = config
}

