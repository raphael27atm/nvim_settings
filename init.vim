source $HOME/.config/nvim/plug-config/coc.vim

" Leader
let mapleader = ","

"set backspace=2   " Backspace deletes like most programs in insert mode
set backspace=indent,eol,start  "Allow backspace in insert mode
set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set noshowmode
set autowrite     " Automatically :write before running commands
"set relativenumber " show the numbers above your line to relative of current line
set mouse=a        " make vim clickable
set spelllang=en   " spelling in english
set pastetoggle=<F2>    " allow pasting with correct indentation
set cursorline
set smartindent
set nowrap
set hidden
set ignorecase
set smartcase
set lazyredraw
set magic
set exrc
set number
set completeopt=menuone,noinsert,noselect
set updatetime=50
set inccommand=split

"*****************************************************************************
"" Basic Setup
"*****************************************************************************"
"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set bomb
set binary

"" Fix backspace indent
set backspace=indent,eol,start

"" Tabs. May be overriten by autocmd rules
set tabstop=2
set softtabstop=0
set shiftwidth=2
set expandtab

" Fim

set spell spelllang=en_gb
nnoremap <leader>sp :norm mm[s1z=`m<cr>

set shiftround
set expandtab

" To automatically unfold all of a file
set foldlevelstart=99

" Use one space, not two, after punctuation.
set nojoinspaces

set vb t_vb=
set undofile

" https://github.com/junegunn/fzf.vim/issues/456
" Depending where it's installed
set rtp+=~/.fzf
set rtp+=/usr/local/opt/fzf

" Use RG for grepping
set grepprg=rg\ --vimgrep\ --smart-case\ --hidden\ --follow

" Splits open to the right and below
set splitbelow splitright

set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

autocmd BufWritePre * %s/\s\+$//e

filetype off                  " required

call plug#begin('~/.vim/plugged')

Plug 'dracula/vim'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'gruvbox-community/gruvbox'
Plug 'neoclide/coc.nvim',
      \ {'branch': 'release'}                         " Intellisense engine for vim8 & neovim   | https://github.com/neoclide/coc.nvim
Plug 'mbbill/undotree'
Plug 'tpope/vim-commentary'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
Plug 'plasticboy/vim-markdown'
Plug 'mattn/emmet-vim'
Plug 'junegunn/vim-easy-align'
Plug 'christoomey/vim-system-copy'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'elixir-editors/vim-elixir'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'haydenrou/tickit.vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/syntastic'
Plug 'jelera/vim-javascript-syntax'
Plug 'w0rp/ale'
Plug 'itmammoth/run-rspec.vim'
Plug 'alvan/vim-closetag'

" Syntax Highlighting
Plug 'hail2u/vim-css3-syntax'           " CSS3 syntax                                           | https://github.com/hail2u/vim-css3-syntax
Plug 'cakebaker/scss-syntax.vim'        " Vim syntax file for scss (Sassy CSS)                  | https://github.com/cakebaker/scss-syntax.vim
Plug 'pangloss/vim-javascript',
      \ { 'for': ['javascript', 'vue', 'react']
      \}                                " Javascript indentation and syntax support in Vim.     | https://github.com/pangloss/vim-javascript
Plug 'maxmellon/vim-jsx-pretty'         " JSX and TSX syntax pretty highlighting for vim.       | https://github.com/MaxMEllon/vim-jsx-pretty
Plug 'posva/vim-vue'                    " Syntax Highlight for Vue.js components                | https://github.com/posva/vim-vue
Plug 'elzr/vim-json'                    " A better JSON for Vim                                 | https://github.com/elzr/vim-json
Plug 'digitaltoad/vim-pug'              " Vim syntax highlighting for Pug templates             | https://github.com/digitaltoad/vim-pug
Plug 'habamax/vim-asciidoctor'          " Asciidoctor plugin for Vim                            | https://github.com/habamax/vim-asciidoctor
Plug 'dag/vim-fish'                     " Vim support for editing fish scripts                  | https://github.com/dag/vim-fish
Plug 'cespare/vim-toml'                 " Vim syntax for TOML                                   | https://github.com/cespare/vim-toml
Plug 'leafgarland/typescript-vim'       " Typescript syntax files for Vim                       | https://github.com/leafgarland/typescript-vim
Plug 'Yggdroot/indentLine'              " Display indention levels with thin vertical lines     | https://github.com/Yggdroot/indentLine
Plug 'jparise/vim-graphql'              " GraphQL file detection, syntax highlighting, ...      | https://github.com/jparise/vim-graphql
Plug 'styled-components/vim-styled-components',
      \ { 'branch': 'main' }            " Vim bundle for styled components                      | https://github.com/styled-components/vim-styled-components
Plug 'iloginow/vim-stylus'              " Stylus syntax highlighting                            | https://github.com/iloginow/vim-stylus


"Autocomplete Golamg:
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-go'
Plug 'roxma/nvim-yarp'
Plug 'stamblerre/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }
"Snippets:
Plug 'ncm2/ncm2-ultisnips'
Plug 'SirVer/ultisnips'

" Rails
Plug 'ecomba/vim-ruby-refactoring'
Plug 'keith/rspec.vim'
Plug 'skwp/vim-iterm-rspec'
Plug 'skwp/vim-spec-finder'
Plug 'ck3g/vim-change-hash-syntax'

" Use rg for FZF
if executable('rg')
  let g:rg_derive_root=1
endif

call plug#end()

syntax on

"colorscheme dracula
"colorscheme gruvbox
"colorscheme tender
" colorscheme challenger_deep
colorscheme tender

let g:lightline = { 'colorscheme': 'challenger_deep'}

hi Normal guibg=NONE ctermbg=NONE
hi NonText guibg=NONE ctermbg=NONE
hi Search cterm=NONE ctermbg=LightMagenta ctermfg=black

" Make it obvious where 80 characters is
highlight ColorColumn ctermbg=red
call matchadd('ColorColumn', '\%81v', 100)

" When editing a file, always jump to the last known cursor position.
" Don't do it for commit messages, when the position is invalid, or when
" inside an event handler (happens when dropping a file on gvim).
autocmd BufReadPost *
  \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif

autocmd FileType javascript,javascriptreact,javascript.jsx,javascript.tsx setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd BufNewFile,BufRead *.jsx set filetype=javascriptreact
autocmd BufNewFile,BufRead *.tsx set syntax=javascriptreact
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" When the type of shell script is /bin/sh, assume a POSIX-compatible
" shell for syntax highlighting purposes.
let g:is_posix = 1

set wildmode=list:longest,list:full

nnoremap <Leader><Enter> :noh<cr>

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" ale
let g:ale_sign_warning = '⚠️'
let g:ale_fixers = {
      \ 'markdown': ['prettier'],
      \ 'json': ['jq'],
      \ 'javascript': ['prettier'],
      \ 'yaml': ['trim_whitespace'],
      \ 'sh': ['shfmt']
      \ }
let g:ale_linters = {
      \ 'markdown': ['prettier'],
      \ 'yaml': ['yamllint'],
      \ 'javascript': ['eslint', 'flow', 'flow-language-server', 'jscs', 'jshint', 'standard', 'xo'],
      \ }
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_set_balloons = 1
let g:ale_list_window_size = 5
let g:ale_javascript_prettier_use_local_config = 1
let g:ale_statusline_format = ['{%d} error(s)', '{%d} warning(s)', '']
let g:ale_statusline_format = ['× %d', '⚠  %d', '✓ OK']
let g:ale_lint_on_text_changed = 'normal' " Slows down things if it's always linting
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '%linter%: %s [%severity%]'

" syntastic
let g:syntastic_always_populate_loc_list=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
let g:syntastic_auto_loc_list=1
let g:syntastic_aggregate_errors = 1

" IndentLine
let g:indentLine_enabled = 1
let g:indentLine_concealcursor = 0
let g:indentLine_char = '┆'
let g:indentLine_faster = 1

" INDENTATION:
"------------
"Highlights code for multiple indents without reselecting
vnoremap < <gv
vnoremap > >gv

"AUTO IMPORT:
"------------
let g:go_fmt_command = "goimports"

"AUTOCOMPLETE:
"-------------
augroup ncm2
  au!
  autocmd BufEnter * call ncm2#enable_for_buffer()
  set completeopt=noinsert,menuone,noselect
  au User Ncm2PopupOpen set completeopt=noinsert,menuone,noselect
  au User Ncm2PopupClose set completeopt=menuone
augroup END
"Press Enter to select item in autocomplete popup
inoremap <silent> <expr> <CR> (pumvisible() ? ncm2_ultisnips#expand_or("\<CR>", 'n') : "\<CR>")
"Cycle through completion entries with tab/shift+tab
inoremap <expr> <TAB> pumvisible() ? "\<c-n>" : "\<TAB>"
inoremap <expr> <s-tab> pumvisible() ? "\<c-p>" : "\<TAB>"
"Allow getting out of pop with Down/Up arrow keys
inoremap <expr> <down> pumvisible() ? "\<C-E>" : "\<down>"
inoremap <expr> <up> pumvisible() ? "\<C-E>" : "\<up>"

"HIGHLIGHTING:
"-------------
" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

noremap YY "+y<CR>
noremap <leader>p "+gP<CR>
noremap XX "+x<CR>

"" Clean search (highlight)
nnoremap <silent> <leader><space> :noh<cr>

" Quicker window movement
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>h <C-w>h
nnoremap <Leader>l <C-w>l

nnoremap <Leader>w :w!<cr>

" Vertical and horizontal splits
nnoremap <Leader>vs <C-w>v
nnoremap <Leader>xs <C-w>S

nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

" for easyalign
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

autocmd FileType html,css,erb,jsx,javascript,rb,typescriptreact,javascriptreact,scss setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType go set softtabstop=0 noexpandtab
autocmd FileType html,css,erb,jsx,javascript,typescriptreact,javascriptreact EmmetInstall

" https://github.com/tpope/vim-commentary/issues/68
autocmd FileType javascript,javascriptreact,typescript,typescriptreact setlocal commentstring={/*\ %s\ */}

" PLUGIN: Coc-vim

" Global extension names to install when they aren't installed
let g:coc_global_extensions = [
      \ 'coc-css',
      \ 'coc-diagnostic',
      \ 'coc-emmet',
      \ 'coc-eslint',
      \ 'coc-html',
      \ 'coc-pairs',
      \ 'coc-json',
      \ 'coc-marketplace',
      \ 'coc-prettier',
      \ 'coc-snippets',
      \ 'coc-solargraph',
      \ 'coc-stylelintplus',
      \ 'coc-tailwindcss',
      \ 'coc-tsserver',
      \ 'coc-vetur',
      \ 'coc-yaml',
      \ ]

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

let g:coc_global_extensions += ['coc-solargraph']

" End

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

call tickit#set_ticker("")

func GoCoC()
    :CocEnable
    inoremap <buffer> <silent><expr> <TAB>
                \ pumvisible() ? "\<C-n>" :
                \ <SID>check_back_space() ? "\<TAB>" :
                \ coc#refresh()

    inoremap <buffer> <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
    inoremap <buffer> <silent><expr> <C-space> coc#refresh()

    " GoTo code navigation.
    nmap <buffer> <leader>gd <Plug>(coc-definition)
    nmap <buffer> <leader>gy <Plug>(coc-type-definition)
    nmap <buffer> <leader>gi <Plug>(coc-implementation)
    nmap <buffer> <leader>gr <Plug>(coc-references)
    nmap <buffer> <leader>rr <Plug>(coc-rename)
    nnoremap <buffer> <leader>cr :CocRestart
endfun

autocmd BufEnter * :call GoCoC()

nnoremap \ :Rg<CR>

let g:netrw_browse_split=2
let g:netrw_banner=0
let g:netrw_winsize=25

" PLUGIN: Nerdtree
let NERDTreeMinimalUI = 1
let NERDTreeWinPos = "left"
let NERDTreeShowHidden=1
let g:NERDTreeWinSize = 30
let g:nerdtree_tabs_focus_on_files=1
map <Leader>nf :NERDTreeFind<cr>
nnoremap <Leader>nn :NERDTreeToggle<Enter>

function! OpenNerdTree()
  if &modifiable && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
  else
    NERDTreeToggle
  endif
endfunction
nnoremap <silent> <C-\> :call OpenNerdTree()<CR>

" PLUGIN: Fugitive
nmap <leader>gst :G<CR>
nmap <leader>gj :diffget //3<CR>
nmap <leader>gf :diffget //2<CR>
nmap <leader>gdf :Gdiff<CR>

" PLUGIN: Undotree
nnoremap <leader>u :UndotreeShow<CR>

" fzf for file searching
"let $FZF_DEFAULT_COMMAND = 'ag -g ""'
nnoremap <C-F> :Files<cr>
nnoremap <Leader>b :Buffers<cr>
nnoremap <Leader>s :BLines<cr>

" find word under cursor
nnoremap <leader>prr :CocSearch <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>pw :Rg <C-R>=expand("<cword>")<CR><CR>

" Tagbar
nmap <silent> <F4> :TagbarToggle<CR>
let g:tagbar_autofocus = 1

" Command-/ to toggle comments
map <A-/> :TComment<CR>
imap <A-/> <Esc>:TComment<CR>i

" Use Alt- numbers to pick the tab you want
map <silent> <C-1> :tabn 1<cr>
map <silent> <C-2> :tabn 2<cr>
map <silent> <C-3> :tabn 3<cr>
map <silent> <C-4> :tabn 4<cr>
map <silent> <C-5> :tabn 5<cr>
map <silent> <C-6> :tabn 6<cr>
map <silent> <C-7> :tabn 7<cr>
map <silent> <C-8> :tabn 8<cr>
map <silent> <C-9> :tabn 9<cr>

" Source current file Alt-% (good for vim development)
map <A-%> :so %<CR>


" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'
