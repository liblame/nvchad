return {
  {
    "3rd/image.nvim",
    opts = {
      backend = "kitty",
      integrations = {
        markdown = {
          enabled = true,
          clear_in_insert_mode = false,
          download_remote_images = true,
          only_render_image_at_cursor = false,
          filetypes = { "markdown", "vimwiki" },
        },
      },
      max_width = 100,
      max_height = 12,
      max_width_window_percentage = math.huge,
      max_height_window_percentage = 50,
      window_overlap_clear_enabled = true,
      window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },
    },
  },

  { "renerocksai/calendar-vim" },

  {
    "renerocksai/telekasten.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "renerocksai/calendar-vim" },
    cmd = "Telekasten",
    opts = {
      home = vim.fn.expand "~/Documents/notes",
    },
    keys = {
      { "<leader>zf", "<cmd>Telekasten find_notes<cr>", desc = "Telekasten find notes" },
      { "<leader>zg", "<cmd>Telekasten search_notes<cr>", desc = "Telekasten search notes" },
      { "<leader>zd", "<cmd>Telekasten goto_today<cr>", desc = "Telekasten goto today" },
      { "<leader>zz", "<cmd>Telekasten follow_link<cr>", desc = "Telekasten follow link" },
      { "<leader>zn", "<cmd>Telekasten new_note<cr>", desc = "Telekasten new note" },
      { "<leader>zc", "<cmd>Telekasten show_calendar<cr>", desc = "Telekasten show calendar" },
      { "<leader>zb", "<cmd>Telekasten show_backlinks<cr>", desc = "Telekasten show backlinks" },
      { "<leader>zI", "<cmd>Telekasten insert_img_link<cr>", desc = "Telekasten insert image link" },
    },
  },
}
