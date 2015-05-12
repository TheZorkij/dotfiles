set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'vundle'
Bundle 'https://github.com/krisajenkins/vim-pipe.git'
" Bundle 'vim-ruby/vim-ruby'
Bundle 'https://github.com/Lokaltog/vim-powerline'
" Bundle 'tpope/vim-haml'
" Bundle 'tpope/vim-commentary'
" Bundle 'Lokaltog/vim-easymotion'
"Bundle 'kchmck/vim-coffee-script'
Bundle 'https://github.com/bronson/vim-trailing-whitespace'
Bundle 'taglist.vim'
Bundle 'netrw.vim'
"Bundle 'vim-scripts/twilight256.vim'
Bundle 'L9'
" Bundle 'groenewege/vim-less'
Bundle 'FuzzyFinder'
Bundle 'TinyBufferExplorer'
"Bundle 'Railscasts-Theme-GUIand256color'
" Bundle 'bbommarito/vim-slim'
Bundle 'https://github.com/niquola/vim-pg.git'
"Bundle 'niquola/vim-every-day'
" Bundle 'mileszs/ack.vim'
" Bundle 'niquola/vim-hl7'
" Bundle 'wuxb45/ADL'
Bundle 'https://github.com/rking/vim-detailed'
"Bundle 'chriskempson/base16-vim'
"Bundle 'kien/ctrlp.vim'
" Bundle 'ngmy/vim-rubocop'
"Bundle 'scrooloose/syntastic'
" Bundle 'rorymckinley/vim-rubyhash'
" Bundle 'ck3g/vim-change-hash-syntax'
" Bundle 'tpope/vim-rails'
" Bundle 'tpope/vim-endwise'
" Bundle 'tpope/vim-surround'
Bundle 'https://github.com/ervandew/supertab'
" Bundle 'powerman/vim-plugin-ruscmd'
"Bundle 'slimv.vim'
Bundle 'https://github.com/vim-scripts/paredit.vim'
Bundle 'https://github.com/tpope/vim-dispatch'
Bundle 'https://github.com/tpope/vim-fireplace'
Bundle 'https://github.com/tpope/vim-projectionist'
Bundle 'https://github.com/tpope/vim-leiningen'
Bundle 'https://github.com/tpope/vim-classpath'
Bundle 'https://github.com/guns/vim-clojure-static'

filetype plugin indent on     " required!

set nocp
syntax on
set cursorline
set t_Co=256
set number
set numberwidth=3
set noeb
set novb
set incsearch
set ignorecase
set noautochdir
set smartcase
set shiftwidth=2
set ts=15
set expandtab
nmap \f mngg=G`n
nmap <c-e> :Explore %:p:h<cr>
nmap \r :Rubocop<cr>
nmap \b :FufBuffer <cr>
nmap \s :%s/\<<c-r>=expand("<cword>")<cr>\>/
nmap \g :silent grep <c-r>=expand("<cword>")<cr> **/*<cr> :cw<cr><c-l>


"redo migration
nmap redo :execute '!rake db:migrate:redo VERSION='.split(expand('%:t'),'_')[0]<cr>

nmap cd :cd %:h<cr>
set tags+=gems.tags
set tags+=tags
command! -nargs=+ G execute 'silent grep! <args>' | copen 42
" colorscheme twilight256
" colorscheme railscasts
" map \T :Dispatch rspec -X %<cr>
" map \t :exe "Dispatch rspec -X % -l " . line(".")<CR>
" map \S :Dispatch spring rspec -X %<cr>
" map \s :exe "Dispatch spring rspec -X % -l " . line(".")<CR>
let g:ackprg="ack-grep -H --nocolor --nogroup --column"
let g:netrw_list_hide= '.*\.swp$,\~$'
" map \R :Rubocop<cr>
" map \rl :RememberSpecLine<cr>
" map \rr :RunSpecLine<cr>
" map \t :!node_modules/karma/bin/karma run -- %<cr>
set nowrap

" grep 'FHIRValueSets' **/*
" 4251  sed -i 's/FHIRValueSets/Terrminology/g' **/*(.)
" 4253  sed -i 's/fhir_value_sets/terrminology/g' **/*(.)
" 4254  rename 's/fhir_value_sets/terrminology/' **/*

autocmd BufWritePre * :FixWhitespace
map \e :%Eval<cr>
" let base16colorspace=256
set modeline
set modelines=3
let g:clojure_syntax_keywords = {
      \ 'clojureMacro': ["defproject", "fact"],
      \ 'clojureFunc': ["string/join", "string/replace"]
      \ }
