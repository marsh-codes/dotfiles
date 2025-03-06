return {
  {
    "FabijanZulj/blame.nvim",
    lazy = false,
    config = function()
      require('blame').setup {}
      vim.keymap.set("n", "<leader>b", "<cmd>BlameToggle<CR>", { desc = "Toggle Blame" })
    end,
  },
}
