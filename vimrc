execute pathogen#infect()
syntax on
filetype plugin on
filetype plugin indent on
"set ts=2
"set shiftwidth=4
set expandtab
set autoindent
set autowrite
set nu

" using the clipboard as the default register
set clipboard=unnamed

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" 配置ctags
" let Tlist_Ctags_Cmd="/usr/local/bin/ctags"

autocmd BufNewFile,BufReadPost *.go     setl noexpandtab
autocmd BufNewFile,BufReadPost *.vue    setl tabstop=2 shiftwidth=2
autocmd BufNewFile,BufReadPost *.json   setl tabstop=2 shiftwidth=2
autocmd BufNewFile,BufReadPost *.coffee setl tabstop=2 shiftwidth=2
autocmd BufNewFile,BufReadPost *.scala  setl tabstop=2 shiftwidth=2
autocmd BufNewFile,BufReadPost *.js     setl tabstop=2 shiftwidth=2
autocmd BufNewFile,BufReadPost *.css    setl tabstop=2 shiftwidth=2
autocmd BufNewFile,BufReadPost *.ejs    setl tabstop=2 shiftwidth=2
autocmd BufNewFile,BufReadPost *.xml    setl tabstop=2 shiftwidth=2
autocmd BufNewFile,BufReadPost *.sh     setl tabstop=2 shiftwidth=2
autocmd BufNewFile,BufReadPost *.conf   setl tabstop=2 shiftwidth=2
autocmd BufNewFile,BufReadPost *.ts     setl tabstop=2 shiftwidth=2
autocmd BufNewFile,BufReadPost *.html   setl tabstop=2 shiftwidth=2
autocmd BufNewFile,BufReadPost *.yaml   setl tabstop=2 shiftwidth=2

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
map <silent> <leader>gg :Goyo<CR>

"When .vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc 

" js tern
map <silent> <Leader>tdef :TernDef<CR>
map <silent> <Leader>tdoc :TernDoc<CR>

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

" vim-go配置
let g:go_fmt_command = "goimports"
" autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
" vim-go配置 end
