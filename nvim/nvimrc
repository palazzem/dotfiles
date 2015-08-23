" globals
" -------

:let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" NeoBundle: {{
" -------------

if has('vim_starting')
  set runtimepath+=/home/palazzem/.nvim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('/home/palazzem/.nvim/bundle'))

" let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" add or remove your Bundles here
" -------------------------------

" colors scheme
NeoBundle 'chriskempson/base16-vim'

" syntax highlighting
NeoBundle 'peterhoeg/vim-qml'
NeoBundle 'artoj/qmake-syntax-vim'
NeoBundle 'octol/vim-cpp-enhanced-highlight'

" autocomplete / languages support
NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'SirVer/ultisnips'
NeoBundle 'honza/vim-snippets'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'mustache/vim-mustache-handlebars'

" editor improvements
NeoBundle 'bling/vim-airline'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'dkprice/vim-easygrep'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'rking/ag.vim'
NeoBundle 'godlygeek/tabular'

" integrations
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'airblade/vim-gitgutter'

" notes
NeoBundle 'xolox/vim-misc'
NeoBundle 'xolox/vim-notes'

call neobundle#end()
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" NeoBundle: }}
" -------------

" NeoVim configurations
" ---------------------

syntax enable
set background=dark
colorscheme base16-default

set tabstop=4          " number of visual spaces per TAB
set softtabstop=4      " number of spaces in tab when editing
set shiftwidth=4       " number of spaces to use for autoindent
set expandtab          " tabs are space
set copyindent         " copy indent from the previous line

set hidden
set number             " show line number
set showcmd            " show command in bottom bar
set cursorline         " highlight current line
set showmatch          " highlight matching brace
set laststatus=2       " window will always have a status line
set nobackup
set noswapfile

set ignorecase         " ignore case when searching
set smartcase          " case insensitive search until an upper case text is typed

set foldenable
set foldlevelstart=10  " default folding level when buffer is opened
set foldnestmax=10     " maximum nested fold
set foldmethod=syntax  " fold based on indentation

" key mappings
let mapleader=","
inoremap jj <esc>

nnoremap <Tab> :bnext<CR>                       " move to the next buffer
nnoremap <S-Tab> :bprevious<CR>                 " move to the previous buffer
nnoremap <C-w> :bd<CR>                          " close the current buffer

nnoremap <leader><space> :nohlsearch<CR>        " disable search highlighting

nnoremap <A-j> :wincmd j<CR>
nnoremap <A-k> :wincmd k<CR>
nnoremap <A-l> :wincmd l<CR>
nnoremap <A-h> :wincmd h<CR>

" plugins
" -------

" ag
if executable('ag')
    " Note we extract the column as well as the file and line number
    set grepprg=ag\ --nogroup\ --nocolor\ --column
    set grepformat=%f:%l:%c%m
endif

" airline
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#buffer_nr_show=0

" NERDTree
let g:NERDTreeIgnore=['\.pyc$', '__pycache__']
let g:NERDTreeShowHidden=1
map <C-e> :NERDTreeToggle<CR>

" jedi
let g:jedi#popup_on_dot=0
let g:jedi#show_call_signatures=1

" ctrlp
let g:ctrlp_show_hidden=1
let g:ctrlp_use_caching=0
let g:ctrlp_custom_ignore = '\v[\/](transpiled)|dist|tmp|node_modules|(\.(swp|git|bak|pyc|DS_Store))$'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_max_files=0
let g:ctrlp_max_height = 18
let g:ctrlp_open_multiple_files = '1vjr'
let g:ctrlp_buffer_func = { 'enter': 'MyCtrlPMappings' }
func! MyCtrlPMappings()
    nnoremap <buffer> <silent> <F6> :call <sid>DeleteBuffer()<cr>
endfunc

" UltiSnip
let g:UltiSnipsExpandTrigger="<leader>e"
let g:UltiSnipsJumpForwardTrigger="<leader>b"
let g:UltiSnipsJumpBackwardTrigger="<leader>z"

" cpp
let g:cpp_class_scope_highlight = 1
