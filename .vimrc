""""""""""""""""""""
" 基礎配置
""""""""""""""""""""


syntax on             " 支持語法高亮
set nu! rnu!
set tabstop=4         " tab 輸出兩個空格
set shiftwidth=4
set cursorline        " 高亮所在行
set expandtab         " tab 轉為空格
set autoindent        " 自動縮排
set mouse=a           " 滑鼠模式
set hlsearch          " 高亮搜索
set encoding=utf-8    " 支持utf8
set termencoding=utf-8
set paste             " 貼上不會跑版
colorscheme darkblue


""""""""""""""""""""
" Vundle 配置
""""""""""""""""""""


set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" 插件
Plugin 'VundleVim/Vundle.vim' " 插件管理器本人
Plugin 'psf/black', {'branch': 'stable'} " Python Formatter 
Plugin 'Valloric/YouCompleteMe' " Code Completion Engine

call vundle#end()
filetype plugin indent on


""""""""""""""""""""
" 插件配置
""""""""""""""""""""


" -- black 配置 --
augroup black_on_save
    autocmd!
    autocmd BufWritePre *.py Black
augroup end
nnoremap <F9> :Black<CR>
let g:black_skip_string_normalization = 1

" -- YCM 配置 --
let g:ycm_server_python_interpreter='/home/user/miniconda3/bin/python'
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
highlight PMenu ctermfg=0 ctermbg=242 guifg=black guibg=darkgrey
highlight PMenuSel ctermfg=242 ctermbg=8 guifg=darkgrey guibg=black
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

