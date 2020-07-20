syntax enable
set encoding=UTF-8
set background=dark
colorscheme molokai
let g:molokai_original=1

if has("syntax")
  syntax on
  syntax enable
  set hlsearch
endif

filetype on

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  filetype plugin indent on
endif

set autowrite

set autoindent
set smartindent

set softtabstop=2
set tabstop=2
set shiftwidth=2
set cindent
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s

set linebreak
set whichwrap=b,s,<,>,[,]

set history=500
set ruler

set mouse=a
set number

setlocal textwidth=80
set listchars=tab:>-
set laststatus=2

set showcmd
set showmode

set incsearch
set nocompatible
set backspace=indent,eol,start

set foldmethod=syntax
set foldlevel=100
set foldcolumn=4

set cursorline
set cursorcolumn

set colorcolumn=80


map <F4> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
imap <F4> <ESC>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>

set tags=.tags
set tags+=~/.vim/tags/usr_include.tags
set tags+=~/.vim/tags/usr_local_include.tags

imap <F3> <C-X><C-O>
map <F3> <C-X><C-O>
imap <F2> <C-X><C-I>
map <F2> <C-X><C-I>

set completeopt=menu,menuone,longest
let OmniCpp_MayCompleteDot=1
let OmniCpp_MayCompleteArrow=1
let OmniCpp_MayCompleteScope=1
let OmniCpp_SelectFirstItem=2
let OmniCpp_NamespaceSearch=2
let OmniCpp_ShowPrototypeInAddr=1
let OmniCpp_GlobalScopeSearch=1
let OmniCpp_DisplayMode=1
let OmniCpp_ShowScropeInAddr=1
let OmniCpp_ShowAccess=1
let OmniCpp_DefaultNamespaces=["std","_GLIBCXX_STD"]

let Tlist_Ctags_Cmd='ctags'
let Tlist_Use_Right_Window=1
let Tlist_Show_One_File=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Process_File_Always=1
let Tlist_Inc_Winwidth=0

let g:winManagerWindowLayout='FileExplorer|TagList'
let g:persistentBehaviour=0

map <F12> :WMToggle<CR>
imap <F12> <ESC>:WMToggle<CR>


let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
\ 'dir':  '\v[\/]\.(git|hg|svn)$',
\ 'file': '\v\.(exe|so|dll)$',
\ 'link': 'some_bad_symbolic_links',
\ }

let g:miniBufExplMapWindowNavVim=1
let g:miniBufExplMapWindowNavArrow=1
let g:miniBufExplMapCTabSwitchBufs=1
let g:miniBufExplModSelTarget=1


map <F5> :make<CR><CR><CR> :copen<CR><CR>
imap <F5> <ESC>:make<CR><CR><CR> :copen<CR><CR>
map <F6> :cp<CR>
imap <F6> :cp<CR>
map <F7> :cn<CR>
imap <F7> :cn<CR>
map <F8> :make clean<CR><CR><CR>
imap <F8> <ESC>:make clean<CR><CR><CR>


set csprg=/usr/bin/cscope
set csto=0
set cst
set cscopequickfix=s-,c-,d-,i-,t-,e-
set nocsverb
cs add cscope.out
cs add ~/.vim/scopes/usr_include.scope
cs add ~/.vim/scopes/usr_local_include.scope
set csverb

nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR> :copen<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR> :copen<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR> :copen<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR> :copen<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i <C-R>=expand("<cfile>")<CR><CR> :copen<CR><CR>


:inoremap ( ()<ESC>i
:inoremap {<CR> {}<ESC>i<CR><TAB><CR><ESC>k<END>a
:inoremap [ []<ESC>i
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
:inoremap ` ``<ESC>i


let g:UltiSnipsExpandTrigger="<TAB>"
let g:UltiSnipsJumpForwardTrigger="<C-f>"
let g:UltiSnipsJumpBackwardTrigger="<C-b>"
let g:UltiSnipsEditSplit="vertical"


let g:rainbow_active=1

set sessionoptions=blank,buffers,curdir,folds,tabpages,winsize
nmap <leader>sl :SessionList<CR>
nmap <leader>ss :SessionSave<CR>
nmap <leader>sc :SessionClose<CR>

let g:NERDDefaultAlign='right'
let g:NERDAltDelims_cpp=1
let g:NERDCustomDelimiters={ 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines=1
let g:NERDTrimTrailingWhitespace=1

map <leader>t :NERDTreeToggle<CR>
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
let NERDTreeShowHidden=1
let NERDTreeWinSize=31
let g:nerdtree_tabs_open_on_console_startup=1
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
let NERDTreeShowBookmarks=1

let g:Powerline_symbols='fancy'


:inoremap //f /**<CR>\file  <CR>\brief <CR><BS><BS>*/<ESC>2k<END>a
:inoremap //m /// \fn     <CR>/ \brief  <CR>/ \param  <CR>/ \return <ESC>3ka
:inoremap //c /**<CR>\class <CR>\brief <CR><BS><BS>*/<ESC>2k<END>a
:inoremap //l ///<<SPACE>

autocmd FileType vim setlocal dict+=~/.vim/dict/vim.dict
autocmd FileType c setlocal dict+=~/.vim/dict/c.dict
autocmd FileType cpp setlocal dict+=~/.vim/dict/cpp.dict
autocmd FileType cxx setlocal dict+=~/.vim/dict/cpp.dict
autocmd FileType cc setlocal dict+=~/.vim/dict/cpp.dict


:highlight extraSpace ctermbg=red guibg=red
:match extraSpace /\v\s+$/
