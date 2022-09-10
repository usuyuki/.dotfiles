require'packer'.startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use "rebelot/kanagawa.nvim"
    use { "nvim-lua/plenary.nvim" } -- Useful lua functions used by lots of plugins
    use("williamboman/nvim-lsp-installer")
        -- filer
    -- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

use {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = { 
      "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }
end)
