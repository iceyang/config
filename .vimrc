execute pathogen#infect()
syntax on
filetype plugin on
filetype plugin indent on
set ts=2
"set shiftwidth=4
set expandtab
set autoindent
set nu

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" 配置ctags
" let Tlist_Ctags_Cmd="/usr/local/bin/ctags"

autocmd BufNewFile,BufReadPost *.go setl shiftwidth=2 expandtab
autocmd BufNewFile,BufReadPost *.json setl shiftwidth=2 expandtab
autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
autocmd BufNewFile,BufReadPost *.js setl shiftwidth=2 expandtab
autocmd BufNewFile,BufReadPost *.ejs setl shiftwidth=2 expandtab
autocmd BufNewFile,BufReadPost *.xml setl shiftwidth=2 expandtab
autocmd BufNewFile,BufReadPost *.sh setl shiftwidth=2 expandtab
autocmd BufNewFile,BufReadPost *.html setl tabstop=2 shiftwidth=2 expandtab

au BufNewFile,BufRead *.ejs set filetype=html

" set mapleader
let mapleader = "\<Space>"
map <silent> <leader>ss :source ~/.vimrc<CR>
map <silent> <leader>ee :e ~/.vimrc<CR>
map <silent> <leader>q :q<CR>
map <silent> <leader>w :w<CR>
map <silent> <leader>x :x<CR>
map <silent> <leader>tb :NERDTreeToggle<CR>
map <silent> <leader>h <c-w>h
map <silent> <leader>j <c-w>j
map <silent> <leader>k <c-w>k
map <silent> <leader>l <c-w>l

"When .vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc 

" vim-go custom mappings
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>r <Plug>(go-run)
au FileType go nmap <Leader>b <Plug>(go-build)
au FileType go nmap <Leader>gt <Plug>(go-test)
au FileType go nmap <Leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>e <Plug>(go-rename)
au Filetype go nnoremap <leader>v :vsp <CR>:exe "GoDef" <CR>
au Filetype go nnoremap <leader>s :sp <CR>:exe "GoDef"<CR>
au Filetype go nnoremap <leader>t :tab split <CR>:exe "GoDef"<CR>
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"

" color setting
let g:rehash256 = 1
let g:molokai_original = 1
:colorscheme molokai

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-t>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

nmap <F3> :TagbarToggle<CR>
nmap <F2> :NERDTreeToggle<CR>

" set powerline
set rtp+=/Users/iceyang/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim/
set laststatus=2
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set termencoding=utf-8
let Powerline_symbols = 'compatible'

set clipboard=unnamed
