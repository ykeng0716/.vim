"檔案編碼
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

"編輯喜好
syntax on "語法上色顯示
set nocompatible "VIM 不使用和 VI 相容的模式
set ai           " 自動縮排
set smartindent
set shiftwidth=4 " 設定縮排寬度 = 4 
set tabstop=4    " tab 的字元數
set expandtab    " 用空白代替tab
set t_Co=256
set history=50
set number
set ruler
set hls         " highlight search
set foldmethod=syntax "依據程式語法開啓摺疊模式

imap { {}<ESC>i<CR><ESC>V<O

"colorscheme Tomorrow-Night-Blue

colorscheme Tomorrow-Night-Bright

set runtimepath+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'shawncplus/phpcomplete.vim'
Bundle 'Gasol/vim-php'

"
