set number
syntax on
filetype plugin indent on
set relativenumber
set termguicolors
set signcolumn=yes
set cursorline
set showmatch
" we're adults, we lose our files like we're supposed to!
set noswapfile
set hlsearch
set incsearch
set ignorecase
set smartcase
" unhighlight search
nnoremap <silent> <Esc><Esc> :noh<CR>
" use system clipboard
set clipboard=unnamedplus
" defaults for tabs vs. spaces
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set wrap
set linebreak
" no automatic hard-wrapping
set textwidth=0
" Smarter word selection for paths/urls
set iskeyword+=-,.,/,#

" markdown
augroup ft_markdown
  autocmd!
  autocmd FileType markdown setlocal wrap linebreak nolist
  autocmd FileType markdown setlocal spell spelllang=en
  autocmd FileType markdown setlocal conceallevel=2
  " continue lists / comments
  autocmd FileType markdown setlocal formatoptions+=nro
  autocmd FileType markdown setlocal textwidth=0 colorcolumn=
augroup END

" python
augroup ft_python
  autocmd!
  autocmd FileType python setlocal tabstop=4 shiftwidth=4 expandtab
  autocmd FileType python setlocal colorcolumn=79
  autocmd FileType python setlocal formatoptions+=cro
augroup END

" yaml / ansible
augroup ft_yaml_ansible
  autocmd!
  autocmd FileType yaml,ansible setlocal tabstop=2 shiftwidth=2 expandtab
  autocmd FileType yaml,ansible setlocal foldmethod=indent
augroup END

" json
autocmd FileType json setlocal equalprg=jq
