return {
  'neovim/nvim-lspconfig',
  config = function()
    local lspconfig = require('lspconfig')

    -- PHP (Intelephense)
    lspconfig.intelephense.setup({})

    -- JavaScript / TypeScript (ts_ls)
    lspconfig.ts_ls.setup({})

    -- Lua (lua_ls)
    lspconfig.lua_ls.setup({
      settings = {
        Lua = {
          runtime = { version = 'LuaJIT' },
          diagnostics = { globals = { 'vim' } },
          workspace = {
            library = vim.api.nvim_get_runtime_file("", true),
            checkThirdParty = false,
          },
          telemetry = { enable = false },
        },
      },
    })
  end
}

