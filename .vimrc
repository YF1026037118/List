 set nocompatible
 filetype off
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'scrooloose/nerdtree',{'on':'NERDTreeToggle'}
Plugin 'mileszs/ack.vim'
Plugin 'denstiny/terslation'
Plugin 'springhan/notoc.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin '30-seconds/30-seconds-of-code'
Plugin 'dyng/ctrlsf.vim'
Plugin 'springhan/terslation.vim'
Plugin 'lilydjwg/fcitx.vim'
Plugin 'Iron-E/nvim-highlite'
Plugin 'xolox/vim-notes'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
Plugin 'christoomey/vim-sort-motion'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'mbbill/undotree'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'itchyny/vim-cursorword'
Plugin 'tmhedberg/SimpylFold'
" For general writing
Plugin 'reedes/vim-wordy'
Plugin 'ron89/thesaurus_query.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'theniceboy/nvim-deus'
" Bookmarks
Plugin 'kshenoy/vim-signature'

" Other useful utilities
Plugin 'jiangmiao/auto-pairs'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'godlygeek/tabular'
Plugin 'makerj/vim-pdf'
Plugin 'rhysd/open-pdf.vim'
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'scrooloose/nerdcommenter'
" Dependencies
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'kana/vim-textobj-user'
Plugin 'fadein/vim-FIGlet'
Plugin 'majutsushi/tagbar'
Plugin 'nsf/gocode',{'rtp':'vim/'}
Plugin 'Blackrush/vim-gocode'
Plugin 'lvht/tagbar-markdown'
Plugin 'suan/vim-instant-markdown'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-pathogen'
Plugin 'tpope/vim-surround'
Plugin 'gcmt/wildfire.vim'
Plugin 'tpope/vim-commentary'
Plugin 'fatih/vim-go', {'tag':'*','for':'go' }
Plugin 'iamcco/mathjax-support-for-mkdp'
Plugin 'dhruvasagar/vim-table-mode.git'
Plugin 'tamlok/vim-markdown'
Plugin 'mzlogin/vim-markdown-toc'
Plugin '907th/vim-auto-save'
Plugin 'iamcco/markdown-preview.vim'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'younghz/markdown'
Plugin 'vimwiki/vimwiki'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'maralla/completor.vim'
Plugin 'Shougo/deoplete.nvim'
if !has('nvim')
Plugin 'roxma/nvim-yarp'
Plugin 'roxma/vim-hug-neovim-rpc'
    endif
Plugin 'Shougo/denite.nvim'
Plugin 'Shougo/neosnippet.vim'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plugin 'neomake/neomake'
Plugin 'honza/vim-snippets'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'Lokaltog/vim-powerline'
Plugin 'junegunn/goyo.vim'
Plugin 'mg979/vim-visual-multi',{'branch':'master'}
Plugin 'itchyny/calendar.vim',{'on':'calendar'}
Plugin 'junegunn/vim-easy-align'
call vundle#end()
autocmd BufwritePost $MYVIMRC source $MYVIMRC
"setting
filetype plugin on
filetype plugin indent on
set mouse=a
set encoding=utf-8
set background=dark
set termguicolors
"colorscheme highlite
"colorscheme solarized
colorscheme molokai
"colorscheme phd
set clipboard=unnamed
let g:mkdp_markdown_css=''
" Prevent incorrect backgroung rendering
 let &t_ut=''
let g:livepreview_engine ='your_engine' . '[options]'
let g:livepreview_previewer ='your_viewer'
let g:livepreview_cursorhold_recompile = 0
let g:vim_markdown_math = 1
 " ===
 " === Main code display
 " ===
 set number
 set relativenumber
 set ruler
 set cursorline
 set cursorcolumn
 set  nowrap
 syntax enable
 syntax on
  let g:vmt_auto_update_on_save =0
  function RToc()
    exe "/-toc .* -->"
    let lstart=line('.')
    exe "/-toc -->"
    let lnum=line('.')
    execute lstart.",".lnum."g/          /d"
  endfunction
 " ===
 " === Editor behavior
 " ===
 " Better tab
 set expandtab
 set tabstop=2
 set shiftwidth=2
 set softtabstop=2
 set list
 set listchars=tab:▸\ ,trail:▫
 set scrolloff=5

 " Prevent auto line split
 set wrap
 set tw=0

 set indentexpr=
 " Better backspace
 set backspace=indent,eol,start

 set foldmethod=indent
 set foldlevel=99

 let &t_SI = "\<Esc>]50;CursorShape=1\x7"
 let &t_SR = "\<Esc>]50;CursorShape=2\x7"
 let &t_EI = "\<Esc>]50;CursorShape=0\x7"

 " ===
 " === Window behaviors
 " ===
 set splitright
 set splitbelow

 " ===
 " === Status/command bar
 " ===
 set laststatus=2
 set autochdir
 set showcmd
 set formatoptions-=tc

 " Show command autocomplete
 set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc
 set wildmenu     " show anavigable menu for tab completion
 set wildmode=longest,list,full

 " Searching options
 set hlsearch
 exec "nohlsearch"
 set incsearch
 set ignorecase
 set smartcase
"Coding zhujie
" Add spaces after comment delimiters by default
 let g:NERDSpaceDelims = 1

 " Use compact syntax for prettified multi-line comments
 let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/'  }  }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1
let g:powerline_colorscheme='solarized256'
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_guides_size=1
set encoding=utf-8
set autoindent
set autowrite
set nofoldenable
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>
function! s:isAtStartOfLine(mapping)
	  let text_before_cursor = getline('.')[0 : col('.')-1]
	    let mapping_pattern = '\V' . escape(a:mapping, '\')
	      let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
	        return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
	endfunction

	inoreabbrev <expr> <bar><bar>
	          \ <SID>isAtStartOfLine('\|\|') ?
	          \ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'
	inoreabbrev <expr> __
	          \ <SID>isAtStartOfLine('__') ?
	          \ '<c-o>:silent! TableModeDisable<cr>' : '__'

" nerdtree
autocmd vimenter * NERDTree    " 打开vim，自动开启nerd tree
map <F3> :NERDTreeMirror<CR>   " 通过F3 打开/关闭 nerd tree 
map <F3> :NERDTreeToggle<CR>
 " tagbar
 nmap <F8> :TagbarToggle<CR>    " 通过 F8
 nmap <space>e :CocCommand explorer<CR>
 " 打开/关闭Tagbar
 "Let
let g:airline_theme="ron89"
" NerdCommenter
let g:NERDSpaceDelims = 1
" Define mappings
 autocmd FileType denite call s:denite_my_settings()
 function! s:denite_my_settings() abort
nnoremap <silent><buffer><expr> <CR>\ denite#do_map('do_action')
nnoremap <silent><buffer><expr> d\ denite#do_map('do_action', 'delete')
nnoremap <silent><buffer><expr> p\ denite#do_map('do_action', 'preview')
nnoremap <silent><buffer><expr> q\ denite#do_map('quit')
nnoremap <silent><buffer><expr> i\ denite#do_map('open_filter_buffer')
nnoremap <silent><buffer><expr> <Space>\ denite#do_map('toggle_select').'j'
endfunction
"neomake#configure#automake
" When writing a buffer (no delay).
 call neomake#configure#automake('w')
 " When writing a buffer (no delay), and on normal mode changes (after 750ms).
 call neomake#configure#automake('nw', 750)
 " When reading a buffer (after 1s), and when writing (no delay).
 call neomake#configure#automake('rw', 1000)
 " Full config: when writing or reading a buffer, and on changes in insertand
 " normal mode (after 500ms; no delay when writing).
 call neomake#configure#automake('nrwi', 500)
 let g:markdown_quote_syntax_on_filetypes = ['tert']
 let g:ackprg = 'ag --nogroup --nocolor --column'
"imap
let g:pmenu_scheme ='dark'
let g:pmenu_scheme ='light'
let g:go_disable_autoinstall = 0
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_version_warning = 0
" Go 结构体名字高亮
 let g:go_highlight_types = 1
 " Go 结构体成员高亮
 let g:go_highlight_fields = 1
 " Go 函数名高亮
 let g:go_highlight_function_calls = 1
let g:completor_gocode_binary  ='/usr/bin/go'
"Valloric/YouCompleteMe
set completeopt=longest,menu
let g:ycm_confirm_extra_conf=0  " 关闭加载.ycm_extra_conf.py提示
let g:ycm_complete_in_comments = 1  "在注释输入中也能补全
let g:ycm_complete_in_strings = 1   "在/字符串输入中也能补全
let g:ycm_collect_identifiers_from_tags_files=1 " 开启 YCM 基于标签引擎
let g:ycm_collect_identifiers_from_comments_and_strings = 1   "注释和字符串中的文字也会被收入补全
let g:ycm_seed_identifiers_with_syntax=1 "语言关键字补全, 不过python关键字都很短，所以，需要的自己打开
let g:ycm_min_num_of_chars_for_completion=2 " 从第2个键入字符就开始罗列匹配项
let g:ycm_path_to_python_interpreter='/usr/bin/python'
let g:table_mode_corner='|'
let g:table_mode_corner_corner='+'
let g:table_mode_header_filechar='='
" Compile function
 map r :call CompileRunGcc()<CR>
 func! CompileRunGcc()
 exec "w"
     if &filetype == 'c'
 exec "!g++ % -o %<"
 exec "!time ./%<"
elseif &filetype == 'cpp'
exec "!g++ % -o %<"
exec "!time ./%<"
elseif &filetype == 'java'
exec "!javac %"
exec "!time java %<"
elseif &filetype == 'sh':!time bash %
  elseif &filetype == 'python'silent! 
    exec "!clear"
exec "!time python3 %"
  elseif &filetype == 'html'
exec "!firefox % &"
      elseif &filetype == 'markdown'
exec "MarkdownPreview"
 elseif &filetype == 'vimwiki'
 exec "MarkdownPreview"
 endif
 endfunc
 map R :call CompileBuildrrr()<CR>
 " 显示/隐藏 MiniBufExplorer 窗口
map <Leader>bl :MBEToggle<cr>
" buffer 切换快捷键
map <C-Tab> :MBEbn<cr>
map <C-S-Tab> :MBEbp<cr>
 func! CompileBuildrrr() 
 exec "w"
 if
  &filetype == 'vim'
exec "source $MYVIMRC"
elseif 
&filetype == 'markdown'
  exec "echo"
    endif
    endfunc
au BufRead,BufNewFile *.md set filetype=vimwiki
let g:taskwiki_sort_orders={"C": "pri-"}
let g:taskwiki_syntax = 'markdown'
let g:taskwiki_markdown_syntax='markdown'
let g:taskwiki_markup_syntax='markdown'


" === Experimenting coc.nvim features
set timeoutlen=100
set cmdheight=2

inoremap <C-d> <Esc>:set cmdheight=2<CR>a
inoremap <C-t> <Esc>:set cmdheight=10<CR>a
nnoremap <C-d> :set cmdheight=2<CR>
nnoremap <C-t> :set cmdheight=10<CR>
nnoremap <leader>jc :YcmCompleter GoToDeclaration<CR>
" 只能是 #include 或已打开的文件
nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>
nnoremap <Leader>sp :CtrlSF<CR>
set updatetime=1000
set shortmess+=c
set signcolumn=yes
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
highlight GitStatusAdd ctermfg=142 ctermbg=239 guifg=#98C379 guibg=#44475A
highlight GitStatusMod ctermfg=214 ctermbg=239 guifg=#FABD2F guibg=#44475A
highlight GitStatusDel ctermfg=167 ctermbg=239 guifg=#FB4934 guibg=#44475A
set laststatus=2
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)"
"Basic
inoremap<silent><expr><c-space>coc#refresh()
"inoremap<expr><CR>pumvisible()?"\<C-y>":"\<C-g>u\<CR>"
"inoremap<silent><expr><TAB>pumvisible()?"\<C-n>":"\<TAB>"
function!s:check_back_space()abort
let col=col('.')- 1
return!col|getline('.')[col-1]=~#'\s'
endfunction
highlight GitStatusAdd ctermfg=142 ctermbg=239 guifg=#98C379 guibg=#44475A
highlight GitStatusMod ctermfg=214 ctermbg=239 guifg=#FABD2F guibg=#44475A
highlight GitStatusDel ctermfg=167 ctermbg=239 guifg=#FB4934 guibg=#44475A
set laststatus=2
let g:sort_motion_flags="ul"
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> {Left-Mapping} :TmuxNavigateLeft<cr>
nnoremap <silent> {Down-Mapping} :TmuxNavigateDown<cr>
nnoremap <silent> {Up-Mapping} :TmuxNavigateUp<cr>
nnoremap <silent> {Right-Mapping} :TmuxNavigateRight<cr>
nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>
" Write all buffers before navigating from Vim to tmux pane
let g:tmux_navigator_save_on_switch = 2
" Disable tmux navigator when zooming the Vim pane
let g:tmux_navigator_disable_when_zoomed = 1
