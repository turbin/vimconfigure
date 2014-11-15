"colour theme
colo evening
"colorscheme solarized
"if has('gui_running')
    ""set background=light
    "set background=dark
"else
    "set background=dark
"endif
"auto indent
set autoindent
"smart indent
set smartindent
set tabstop=4
set shiftwidth=4
set mouse=a
set nu
set ru
set history=50
syntax on
set nocp
"编码问题
"let &termencoding=&encoding
set fileencodings=utf-8,gbk
"search highlight 
set hlsearch
"search jump immediately
set incsearch
"smart ingnorecase 
set ignorecase smartcase

set completeopt=longest,menu

filetype plugin on

if filereadable("tags")
	set tags+=tags
endif

nnoremap <silent> <F2> :w<CR>
nnoremap <silent> <F3> :Grep -R<CR>
nnoremap <silent> <F5> :make<CR>
map <silent> <F7>  <ESC>:cprevious<CR>
map <silent> <F8>  <ESC>:cnext<CR>
nmap <silent> <F12>  <ESC>:close<CR>

"建立tags文件支持omni补全
"--c++-kinds=+p  : 为C++文件增加函数原型的标签
"--fields=+iaS   : 在标签文件中加入继承信息(i)、类成员的访问控制信息(a)、以及函数的指纹(S)
"--extra=+q      : 为标签增加类修饰符。注意，如果没有此选项，将不能对类成员补全kkj
nnoremap <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q ../<CR><CR> :TlistUpdate<CR>
nnoremap <C-F11> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
"imap <C-F12><ESC> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>

nnoremap <silent> <F4> :TlistToggle<CR>
"let g:Tlist_Show_One_File = 0
let g:Tlist_Exit_OnlyWindow=1
let g:Tlist_File_Fold_Auto_Close=1
let g:Tlist_Use_Right_Window=0

"set tags+=/usr/include/tags
set tags+=../tags
"set tags+=/usr/src/linux-2.6.17/tags
let g:SuperTabDefaultCompletionType="context"

let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
let g:miniBufExplMoreThanOne = 0
let g:NERDTree_title="[NEDRTree]"
let g:winManagerWindowLayout="NERDTree|TagList"

"mark插件的快捷键
let mapleader=","

function! NERDTree_Start()
    exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
    return 1
endfunction

"nmap <C-F4> :WMToggle<CR>
nnoremap <F6> :WMToggle<CR>

"--omnicppcomplete setting --
" 按下F3自动补全代码，注意该映射语句后不能有其他字符，包括tab；否则按下F3会自动补全一些乱码
 "imap <F3> <C-X><C-O>
" 按下F2根据头文件内关键字补全
 "imap <F2> <C-X><C-I>
 set completeopt=menu,menuone " 关掉智能补全时的预览窗口
 let OmniCpp_MayCompleteDot = 1 " autocomplete with .
 let OmniCpp_MayCompleteArrow = 1 " autocomplete with ->
 let OmniCpp_MayCompleteScope = 1 " autocomplete with ::
 let OmniCpp_SelectFirstItem = 2 " select first item (but don't insert)
 let OmniCpp_NamespaceSearch = 2 " search namespaces in this and included
" files
 let OmniCpp_ShowPrototypeInAbbr = 1 " show function prototype in popup
" window
 let OmniCpp_GlobalScopeSearch=1 " enable the global scope search
 let OmniCpp_DisplayMode=1 " Class scope completion mode: always show all
" members
"let OmniCpp_DefaultNamespaces=["std"]
 let OmniCpp_ShowScopeInAbbr=1 " show scope in abbreviation and remove the
" last column
 let OmniCpp_ShowAccess=1 

"vundel add
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

filetype plugin on 
filetype plugin indent on 

""""""""" vim-scripts repos"""""""""""
"
" " Syntax
" Bundle 'asciidoc.vim'
" Bundle 'confluencewiki.vim'
" Bundle 'html5.vim'
" Bundle 'JavaScript-syntax'
" "Bundle 'mako.vim'
" Bundle 'moin.vim'
" Bundle 'python.vim--Vasiliev'
" Bundle 'xml.vim'
"
" " Color
"
" Bundle 'desert256.vim'
" Bundle 'Impact'
" Bundle 'matrix.vim'
" Bundle 'vibrantink'
" Bundle 'vividchalk.vim'
"
" " Ftplugin
" Bundle 'python_fold'
"
" " Indent
" "Bundle 'indent/html.vim'
" Bundle 'IndentAnything'
" Bundle 'Javascript-Indentation'
" Bundle 'mako.vim--Torborg'
" Bundle 'gg/python.vim'
"
" " Plugin
Bundle 'The-NERD-tree'
" Bundle 'AutoClose--Alves'
" Bundle 'auto_mkdir'
" Bundle 'cecutil'
" Bundle 'fcitx.vim'
" Bundle 'FencView.vim'
" "Bundle 'FuzzyFinder'
" Bundle 'jsbeautify'
" Bundle 'L9'
" Bundle 'Mark'
" Bundle 'matrix.vim'
" Bundle 'mru.vim'
" Bundle 'The-NERD-Commenter'
" "Bundle 'project.vim'
" Bundle 'restart.vim'
"Bundle 'taglist.vim'
" "Bundle 'templates.vim'
" "Bundle 'vimim.vim'
" Bundle 'ZenCoding.vim'
" Bundle 'css_color.vim'
" Bundle 'hallettj/jslint.vim'
"jBundle 'grep.vim'
"jBundle 'mark.vim'
"jBundle 'supertab.vim'
"jBundle 'winmanager'
"jBundle 'omnicppcomplete'
"Bundle 'cscope'
Bundle 'The-NERD-Commenter'
Bundle 'sdcv.vim'
Bundle 'echofunc.vim'
Bundle 'lookupfile.vim'
Bundle 'a.vim'
"""""""""""""""""""""""""""""""""""""""""""""""""""""

set keywordprg=sdcv

nmap <Leader>w :call SearchWord() <CR>
".h path
set path+=../inc
"set path+=../**/inc
"set path+=../../../../**/inc
"set path+=../../../../**/include
" 打开文件时，按照VIMINFO保存的上次关闭时的光标位置重新设置光标
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

"----fold setting----"
set foldmethod=syntax "fold depond on syntax
set foldlevel=100 "donot fold code when open the vim
"set foldcolumn=5 "the width of fold 

