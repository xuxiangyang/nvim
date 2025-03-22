local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "c",
    "markdown",
    "markdown_inline",
    "go",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- c/cpp stuff
    "clangd",
    "clang-format",

    -- golang
    "gopls",
    "delve",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        file = false,
        folder = false,
        folder_arrow = false,
        git = false,
        modified = true,
        diagnostics = false,
        bookmarks = false,
      },
    },
  },
  view = {
    width = 35,
    relativenumber = true,
    number = false,
    signcolumn = "no",
  },
}

M.copilot = {
  suggestion = { enabled = true },
  panel = { enabled = false },
  filetypes = {
    ["*"] = true,
  },
}

return M
