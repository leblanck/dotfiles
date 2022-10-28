-- Install into ~/.config/nvim/
-- Install Packer from GH
-- Source: ':source ~/.config/nvim/init.lua'
-- Install Packer Packages: ':PackerInstall'
-- Reload Source

vim.opt.number = true
vim.cmd [[packadd packer.nvim]]
require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'morhetz/gruvbox'
	vim.cmd [[colorscheme gruvbox]]
        use 'nvim-treesitter/nvim-treesitter'
        require('nvim-treesitter.configs').setup {
            ensure_installed = { "bash", "css", "dockerfile", "html", "javascript", "json", "python", "yaml" },
            highlight = {
                enabled = true,
            },
        }
        use 'nvim-lualine/lualine.nvim'
        require('lualine').setup {
            options = {
                icons_enabled = true,
                theme = 'auto',
            }
        }
        use 'junegunn/fzf'
        use 'junegunn/fzf.vim'
end)
vim.opt.list = true
vim.opt.listchars:append('tab:> ')
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.swapfile = false
-- Map Global Leader From \ to Space
vim.g.mapleader = ' '
-- Open Recent Files
vim.api.nvim_set_keymap('n', '<leader>fr', ':History<CR>', {noremap = true})
