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
"set hls         " highlight search
set foldmethod=syntax "依據程式語法開啓摺疊模式

"statusline setting
set ls=2
"set statusline=[%n]\ %<%f\ %((%1*%M%*%R%Y)%)\ %=%-19(\LINE\ [%3l/%3L]\ COL\ [%02c%03V]%)\ ascii['%02b']\ %P
set statusline=%4*%<\ %1*[%F]
set statusline+=%4*\ %5*[%{&encoding}, " encoding
set statusline+=%{&fileformat}%{\"\".((exists(\"+bomb\")\ &&\ &bomb)?\",BOM\":\"\").\"\"}]%m
set statusline+=%4*%=\ %6*%y%4*\ %3*%l%4*,\ %3*%c%4*\ \<\ %2*%P%4*\ \>
"highlight StatusLine ctermfg=darkgray ctermbg=white
highlight User1 ctermfg=190
highlight User2 ctermfg=243
highlight User3 ctermfg=115
highlight User4 term=underline cterm=underline ctermfg=gray
highlight User5 ctermfg=198
highlight User6 ctermfg=215

imap { {}<ESC>i<CR><ESC>V<O

filetype plugin indent on


"colorscheme Tomorrow-Night-Blue

colorscheme Tomorrow-Night-Bright

set runtimepath+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle '2072/PHP-Indenting-for-VIm'
Bundle 'shawncplus/phpcomplete.vim'
Bundle 'Gasol/vim-php'

"highlight whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
nmap <F7> :%s/\s\+$//<CR>
"
