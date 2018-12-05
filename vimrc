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

autocmd BufNewFile,BufReadPost *.vue setl shiftwidth=2 expandtab
autocmd BufNewFile,BufReadPost *.go setl shiftwidth=2 expandtab
autocmd BufNewFile,BufReadPost *.json setl shiftwidth=2 expandtab
autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
autocmd BufNewFile,BufReadPost *.scala setl shiftwidth=2 expandtab
autocmd BufNewFile,BufReadPost *.js setl shiftwidth=2 expandtab
autocmd BufNewFile,BufReadPost *.css setl shiftwidth=2 expandtab
autocmd BufNewFile,BufReadPost *.ejs setl shiftwidth=2 expandtab
autocmd BufNewFile,BufReadPost *.xml setl shiftwidth=2 expandtab
autocmd BufNewFile,BufReadPost *.sh setl shiftwidth=2 expandtab
autocmd BufNewFile,BufReadPost *.conf setl shiftwidth=2 expandtab
autocmd BufNewFile,BufReadPost *.ts setl shiftwidth=2 expandtab
autocmd BufNewFile,BufReadPost *.html setl tabstop=2 shiftwidth=2 expandtab
autocmd BufNewFile,BufReadPost *.yaml setl tabstop=2 shiftwidth=2 expandtab

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
map <silent> <leader>gy :Goyo<CR>

"When .vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc 

" js tern
map <silent> <Leader>tdef :TernDef<CR>
map <silent> <Leader>tdoc :TernDoc<CR>

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

set encoding=utf-8
set termencoding=utf-8

" set powerline
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

" 配置Haskell
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_indent_if = 3
let g:haskell_indent_case = 2
let g:haskell_indent_let = 4
let g:haskell_indent_where = 6
let g:haskell_indent_do = 3
let g:haskell_indent_in = 1
let g:haskell_indent_guard = 2
let g:haskell_indent_case_alternative = 1

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" 配置缩进 https://github.com/tmhedberg/SimpylFold
let g:SimpylFold_docstring_preview = 1

" 配置Typescript插件
" let g:typescript_indent_disable = 1
