set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'vundle'
Bundle 'git://github.com/vim-ruby/vim-ruby.git'
Bundle 'git://github.com/vim-scripts/ruby-matchit.git'
Bundle 'git://github.com/tpope/vim-endwise.git'
Bundle 'git://github.com/Lokaltog/vim-powerline.git'
Bundle 'tpope/vim-haml.git'
Bundle 'tpope/vim-commentary.git'
Bundle 'https://github.com/krisajenkins/vim-pipe.git'
" Bundle 'Lokaltog/vim-easymotion'
Bundle 'kchmck/vim-coffee-script.git'
Bundle 'bronson/vim-trailing-whitespace.git'
Bundle 'vim-scripts/taglist.vim.git'
"Bundle 'vim-scripts/netrw.vim.git'
"Bundle 'vim-scripts/twilight256.vim.git'
Bundle 'L9'
Bundle 'git://github.com/groenewege/vim-less.git'
Bundle 'FuzzyFinder'
Bundle 'TinyBufferExplorer'
"Bundle 'Railscasts-Theme-GUIand256color'
" Bundle 'bbommarito/vim-slim.git'
Bundle 'niquola/vim-pg.git'
Bundle 'niquola/vim-every-day.git'
Bundle 'mileszs/ack.vim.git'
Bundle 'niquola/vim-hl7.git'
" Bundle 'wuxb45/ADL.git'
Bundle 'https://github.com/rking/vim-detailed'
Bundle 'https://github.com/chriskempson/base16-vim'
Bundle 'kien/ctrlp.vim.git'
Bundle 'ngmy/vim-rubocop.git'
Bundle 'scrooloose/syntastic.git'
" Bundle 'rorymckinley/vim-rubyhash.git'
Bundle 'ck3g/vim-change-hash-syntax.git'
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-endwise.git'
Bundle 'tpope/vim-surround.git'
Bundle 'ervandew/supertab.git'
Bundle 'powerman/vim-plugin-ruscmd.git'
"Bundle 'slimv.vim'
Bundle 'https://github.com/vim-scripts/paredit.vim.git'
Bundle 'git://github.com/tpope/vim-dispatch.git'
Bundle 'git://github.com/tpope/vim-fireplace.git'
Bundle 'https://github.com/tpope/vim-projectionist.git'
Bundle 'git://github.com/tpope/vim-leiningen.git'
Bundle 'tpope/vim-classpath.git'
Bundle 'guns/vim-clojure-static.git'

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
