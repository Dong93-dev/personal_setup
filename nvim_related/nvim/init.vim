
call plug#begin('~/.local/share/nvim/plugged')

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'preservim/tagbar'
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'kassio/neoterm' "  Terminal
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'lukas-reineke/indent-blankline.nvim' " indentation
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-tree/nvim-web-devicons' " developer file icons
Plug 'jiangmiao/auto-pairs'  " autopair
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mhinz/vim-startify' " landing page
Plug 'romgrk/barbar.nvim' " fancy tab bars
Plug 'ambv/black'	" use black
Plug 'folke/tokyonight.nvim', { 'branch': 'main' } " color scheme
Plug 'catppuccin/nvim', { 'as': 'catppuccin' } " color scheme
Plug 'tpope/vim-fugitive' " git tool
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'}
call plug#end()




" ------------------------------------
" nerdtree
lua require('nerdtree')

" barbar bufferline
" let g:bufferline.icons = v:true

" ------------------------------------
" coc config
lua require("coc") 

" ------------------------------------
" Terminal
lua require('neoterm')

" ------------------------------------
" Tagbar
lua require('tagbar')

" ------------------------------------
" startify
lua require('startify')

" ------------------------------------
" airline theme
lua require('airline')



" ------------------------------------
" black 
" " if there is coc-pyright, no need to set it here, you need to set in coc-settings.json to reference formatter path in your env
" " the settings below are for vim plugin 'ambv/black'	
" let g:black_virtualenv = '/Users/dongzhou/miniconda3/envs/nvim'
" let g:black_linelength = 88


" ------------------------------------
" barbar (tab and buffer)
lua require('barbar')

" ------------------------------------
" nerd-tree-git-plugin
lua require('fugitive')



" ------------------------------------
" telescope
lua require('telescope_set')



" ------------------------------------
" others
lua require('others')






