return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = { "rust-analyzer" },
    },
  },

  {
    "mrcjkb/rustaceanvim",
    version = "^6",
    lazy = false, -- rustaceanvim manages its own lazy loading via ft
    ft = { "rust" },
  },

  {
    "saecki/crates.nvim",
    event = { "BufRead Cargo.toml" },
    opts = {},
  },
}
