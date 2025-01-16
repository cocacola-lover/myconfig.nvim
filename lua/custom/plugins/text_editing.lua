return {
  {
    'numToStr/Comment.nvim',
    dependencies = { { 'JoosepAlviste/nvim-ts-context-commentstring', opts = { enable_autocmd = false } } },
    config = function()
      require('Comment').setup {
        pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
      }
      vim.keymap.del('n', 'gc')
      vim.keymap.del('n', 'gb')
    end
  },
  {
    "windwp/nvim-ts-autotag",
    opts = {
      opts = {
          enable_close = true, -- Auto close tags
          enable_rename = true, -- Auto rename pairs of tags
          enable_close_on_slash = false -- Auto close on trailing </}
        }
    }
  },
  {
      "kylechui/nvim-surround",
      version = "*", -- Use for stability; omit to use `main` branch for the latest features
      event = "VeryLazy",
      opts = {
          keymaps = {
              normal = "gy",
              normal_cur = "gyy",
              normal_line = "gY",
              normal_cur_line = "gYY",
          }
      }
  }
}
