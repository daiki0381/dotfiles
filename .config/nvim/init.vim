set shell=/bin/zsh
set shiftwidth=2
set tabstop=2
set number
set expandtab
set textwidth=0
set autoindent
set hlsearch
set clipboard=unnamed
set background=dark
syntax on 
noremap <C-j> <esc>
noremap! <C-j> <esc>
imap <C-p> <Up>
imap <C-n> <Down>
imap <C-b> <Left>
imap <C-f> <Right>
imap <C-e> <end>
imap <C-a> <home>
imap <C-k> <esc>lc$
nnoremap <C-e> $
nnoremap <C-a> 0
nnoremap gh <C-w>h
nnoremap gj <C-w>j
nnoremap gk <C-w>k
nnoremap gl <C-w>l
nnoremap g[ :<C-u>vs<CR><C-w>l
nnoremap g] :<C-u>sp<CR><C-w>j
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap ter :ToggleTerm size=40 direction=float<CR>
nnoremap tff <cmd>Telescope find_files<cr>
nnoremap tft <cmd>Telescope live_grep<cr>
nnoremap tgs <cmd>Telescope git_status<cr>
nnoremap tgc <cmd>Telescope git_commits<cr>
nnoremap tgb <cmd>Telescope git_branches<cr>

call plug#begin()
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.3' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
Plug 'folke/tokyonight.nvim'
Plug 'folke/noice.nvim'
Plug 'MunifTanjim/nui.nvim'
Plug 'https://github.com/lewis6991/gitsigns.nvim'
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
call plug#end()

" colorscheme 
colorscheme tokyonight-moon

" lightline
let g:lightline = {}
let g:lightline.colorscheme = 'horizon'

" Enable true colors in the terminal
set termguicolors

" bufferline
lua require("bufferline").setup{}

" noice 
lua require("noice").setup()

" gitsigns
lua << EOF
require('gitsigns').setup {
  signs = {
    add          = { text = '│' },
    change       = { text = '│' },
    delete       = { text = '_' },
    topdelete    = { text = '‾' },
    changedelete = { text = '~' },
    untracked    = { text = '┆' },
  },
  signcolumn = true,  -- Toggle with `:Gitsigns toggle_signs`
  numhl      = false, -- Toggle with `:Gitsigns toggle_numhl`
  linehl     = false, -- Toggle with `:Gitsigns toggle_linehl`
  word_diff  = false, -- Toggle with `:Gitsigns toggle_word_diff`
  watch_gitdir = {
    follow_files = true
  },
  attach_to_untracked = true,
  current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
    delay = 1,
    ignore_whitespace = false,
  },
  current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
  sign_priority = 6,
  update_debounce = 100,
  status_formatter = nil, -- Use default
  max_file_length = 40000, -- Disable if file is longer than this (in lines)
  preview_config = {
    -- Options passed to nvim_open_win
    border = 'single',
    style = 'minimal',
    relative = 'cursor',
    row = 0,
    col = 1
  },
  yadm = {
    enable = false
  },
}
EOF

lua require("toggleterm").setup()
