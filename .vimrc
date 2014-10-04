" **************************************************************************** "
"                                                                              "
"                                                         :::      ::::::::    "
"    .myvimrc                                           :+:      :+:    :+:    "
"                                                     +:+ +:+         +:+      "
"    By: zaz <zaz@staff.42.fr>                      +#+  +:+       +#+         "
"                                                 +#+#+#+#+#+   +#+            "
"    Created: 2013/06/15 12:36:36 by zaz               #+#    #+#              "
"    Updated: 2014/09/10 03:09:09 by mdubray          ###   ########.fr        "
"                                                                              "
" **************************************************************************** "

"Put your custom Vim configuration here

"Better command completion
"set wildmenu
"set wildmode=list:longest

"Show current line
"set cursorline

" Basic configuration of display
syntax on
set number
set autoindent
set tabstop=4
set mouse=a
set cursorline
set t_vb=
set visualbell
set cc=80
set ruler

" Allow to close directly an open (
inoremap ( ()<left>

" autocomand to include a header in C file
autocmd bufnewfile *.c so ~/C_folder/header.txt
autocmd bufnewfile *.c exe "1," . 11 . "g/File name :.*/s//File name : " .expand("%")
autocmd bufnewfile *.c exe "1," . 11 . "g/Creation date :.*/s//Creation date : " .strftime("%d-%m-%Y")
autocmd Bufwritepre,filewritepre *.c execute "normal ma"
autocmd Bufwritepost, filewritepost *.c execute "normal G"

" Detect the space at the end of lines
augroup VIMRC
	autocmd!

	autocmd bufEnter,WinEnter * call matchadd('Error','\s\+$', -1)

augroup END

"execute pathogen#infect()

set nocompatible " be iMproved
filetype off " required!

" Display with a specific coloscheme
colorscheme desert
syntax on

" autocommand to avoid beep in vim
set noerrorbells visualbell t_vb=
if has('autocmd')
	autocmd GUIEnter * set visualbell t_vb=
endif

" Vundle setup
" " required!
"set rtp+=~/.vim/bundle/vundle/
"call vundle#rc()
"
" " let Vundle manage Vundle
" " required!
"Bundle 'gmarik/vundle'
"
" " My Bundles here:
" "
" " original repos on github
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'Lokaltog/vim-powerline'
" " vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
" " non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" " ...
"
"filetype plugin indent on " required!
" "
" " Brief help
" " :BundleList - list configured bundles
" " :BundleInstall(!) - install(update) bundles
" " :BundleSearch(!) foo - search(or refresh cache first) for foo
" " :BundleClean(!) - confirm(or auto-approve) removal of unused bundles
" "
" " see :h vundle for more details or wiki for FAQ
" " NOTE: comments after Bundle command are not allowed...

" " autocmd vimenter * NERDTree

""syntstic
"let g:syntastic_auto_loc_list=1
"let g:syntastic_disabled_filetypes=['c']
"let g:syntastic_enable_signs=1
