set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'mg979/vim-visual-multi'
Plugin 'preservim/nerdtree'
Plugin 'mileszs/ack.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'ycm-core/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
filetype plugin indent on

"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on
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

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

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
