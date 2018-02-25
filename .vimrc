
"--------------------------------vim
syntax on
set ignorecase
set wildmenu "show commandline fuzzy result
"-------------------------------------------

"------------------------------vim-plugin
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Any valid git URL is allowed
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

Plug 'https://github.com/vim-airline/vim-airline.git'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/kien/ctrlp.vim.git'
Plug 'https://github.com/Shougo/unite.vim.git'
Plug 'https://github.com/AyHelloWorld/ay_vim-vebugger-redefine.git'
Plug 'https://github.com/Shougo/vimproc.vim.git'
Plug 'https://github.com/wsdjeg/FlyGrep.vim.git'
"Plug 'https://github.com/ianva/vim-youdao-translater.git'
"Plug 'https://github.com/vim-scripts/rvmprompt.vim.git'
"Plug 'https://github.com/junegunn/fzf.git'
"Plug 'https://github.com/bling/vim-bufferline.git'

call plug#end()

"---------------------------------------------

"-----------------------------------bufferline
"let g:bufferline_echo = 1
"let g:bufferline_active_buffer_left = '['
"let g:bufferline_active_buffer_right = ']'
"let g:bufferline_modified = '+'
"-------------------------------------------------------------

"----------------------------------vim-airline
"let g:airline_theme="luna" 

"这个是安装字体后 必须设置此项" 
let g:airline_powerline_fonts = 1   
 
 "打开tabline功能,方便查看Buffer和切换，这个功能比较不错"
 "我还省去了minibufexpl插件，因为我习惯在1个Tab下用多个buffer"
 let g:airline#extensions#tabline#enabled = 1
 let g:airline#extensions#tabline#buffer_nr_show = 1

 "设置切换Buffer快捷键"
 nnoremap <C-N> :bn<CR>
 nnoremap <C-P> :bp<CR>

 " 关闭状态显示空白符号计数,这个对我用处不大"
 let g:airline#extensions#whitespace#enabled = 0
 let g:airline#extensions#whitespace#symbol = '!'
"-------------------------------------------------------------

"---------------------------------ay_vim-vebugger
"let g:vebugger_leader = "]"
"if exists('g:vebugger_leader')
"	if !empty(g:vebugger_leader)
		for s:mapping in items({
					\'<F10>':'VBGstepIn',
					\'<F9>':'VBGstepOver',
					\'<F8>':'VBGstepOut',
					\'<F5>':'VBGcontinue',
					\'<F4>':'VBGtoggleTerminalBuffer',
					\'<F7>':'VBGtoggleBreakpointThisLine',
					\']B':'VBGclearBreakpints',
					\'<F6>':'VBGevalWordUnderCursor',
					\']E':'exe "VBGeval ".input("VBG-Eval> ")',
					\']x':'exe "VBGexecute ".getline(".")',
					\']X':'exe "VBGexecute ".input("VBG-Exec> ")',
					\']R':'exe "VBGrawWrite ".input("VBG> ")'})
			exe 'nnoremap '.s:mapping[0].' :'.s:mapping[1].'<Cr>'
		endfor
		for s:mapping in items({
					\']e':'VBGevalSelectedText',
					\']x':'VBGexecuteSelectedText',
					\']r':'VBGrawWriteSelectedText'})
			exe 'vnoremap '.s:mapping[0].' :'.s:mapping[1].'<Cr>'
		endfor
"	endif
"endif
"--------------------------------------------------------------

"---------------------------------ctags
set tags=/home/ay/ay/app/anaconda3_2/envs/tensorflow-nightly_pip/lib/python3.6/site-packages/tags
set tags+=$PWD/tags
"--------------------------------------------------

"-------------------------------rvmprompt
"set statusline+=#{rvmprompt#statusline()}
"let g:rvmprompt_tokens ="v g"
"---------------------------------------------------------------


