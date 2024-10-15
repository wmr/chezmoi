" ============================================================================
"
" .vimrc // OSX // v1.4.4
" (c) 2014 // wmr
"
" ============================================================================

" Bundles ================================================================ {{{

call plug#begin('~/.vim/plugged')

Plug 'Shougo/vimproc.vim', { 'do': 'make' }

" API ==================================================================== {{{

" Web api for plugins
Plug 'mattn/webapi-vim'

" }}}

" Usability ============================================================== {{{

" Dash plugin
Plug 'rizzatti/dash.vim'

" Creating gists
Plug 'mattn/gist-vim'

" Async build/dispatch
Plug 'tpope/vim-dispatch'

" Git wrapper
Plug 'tpope/vim-fugitive'

" Git commit browser
Plug 'int3/vim-extradite'

" show hunks
Plug 'mhinz/vim-signify'

" Edit text surrounding a selection
Plug 'tpope/vim-surround'

" Shorthands for generic stuff
Plug 'tpope/vim-unimpaired'

" Repeat last action
Plug 'tpope/vim-repeat'

" Enhancements for date string literals
Plug 'tpope/vim-speeddating'

" Powerline alternative
Plug 'bling/vim-airline'

" easy naviagation within files
Plug 'Lokaltog/vim-easymotion'

" Smart selection
Plug 'gcmt/wildfire.vim'

" Fully capable terminal window
Plug 'pthrasher/conqueterm-vim'

" Generate powerline prompts
Plug 'edkolev/promptline.vim'

" yank history
Plug 'vim-scripts/YankRing.vim'

" display marks
Plug 'kshenoy/vim-signature'

" dev icons
"Plug 'ryanoasis/vim-devicons'

" }}}

" FileSystem ============================================================= {{{

" Fuzzy search files/buffers
Plug 'kien/ctrlp.vim'

" Another fuzzy search tool with different scope and plugins
Plug 'Shougo/unite.vim'

" colorscheme plugin
Plug 'ujihisa/unite-colorscheme'

" Browse the filesystem easily
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" ag // silver_searcher
Plug 'rking/ag.vim'

" }}}

" Development ============================================================ {{{

" Snippets
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" Formatting tools
Plug 'Chiel92/vim-autoformat'

" Flake8 for python
Plug 'nvie/vim-flake8'

" Syntax and code quality check for various languages
Plug 'scrooloose/syntastic'

" Commenting blocks, etc
Plug 'scrooloose/nerdcommenter'

" Show git diff inline
"Plug 'airblade/vim-gitgutter'

" Close brackets automatically
Plug 'Raimondi/delimitMate'

" Tree like overview of undo option
Plug 'sjl/gundo.vim'

" Text expander tool for html/xml
Plug 'mattn/emmet-vim', { 'for': [ 'html', 'xml', 'javascript' ] }

" YouCompleteMe
Plug 'Valloric/YouCompleteMe', { 'for':  [ 'cpp', 'c', 'python' ], 'do': './install.py --clang-completer' }
autocmd! User YouCompleteMe if !has('vim_starting') | call youcompleteme#Enable() | endif

" Switch between text patterns
Plug 'AndrewRadev/switch.vim'

" Display tags
Plug 'majutsushi/tagbar'

" Auto-resize windows by the golden ratio
Plug 'zhaocai/GoldenView.Vim'

" Select makeprg automatically
Plug 'johnsyweb/vim-makeshift'

" Tabularize text by separator
Plug 'godlygeek/tabular'

" Various tools for go
Plug 'fatih/vim-go', { 'for': 'go' }

" Rust
Plug 'rust-lang/rust.vim', { 'for': 'rust' }

" Swift
Plug 'toyamarinyon/vim-swift', { 'for': 'swift' }

" Javascript
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }

" Gradle support
Plug 'tfnico/vim-gradle'

" Scala support
Plug 'derekwyatt/vim-scala', { 'for': 'scala' }

Plug 'ziglang/zig.vim'

" }}}

" Color Schemes ========================================================== {{{

" a bundle of many useful color schemes
Plug 'flazz/vim-colorschemes'

" essential color schemes // the order is important
" to override the old stuff in flazz/vim-colorschemes
Plug 'wesgibbs/vim-irblack'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'noahfrederick/vim-hemisu'
Plug 'romainl/Apprentice'
Plug 'altercation/vim-colors-solarized'
Plug 'jonathanfilip/vim-lucius'
Plug 'morhetz/gruvbox'
Plug 'trusktr/seti.vim'
Plug 'notpratheek/vim-luna'
Plug 'zandrmartin/vim-distill'
Plug 'ninja/sky'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'ayu-theme/ayu-vim'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'ghifarit53/tokyonight-vim'

" }}}

" Syntax ================================================================= {{{

" Enhanced python highlight
Plug 'mitsuhiko/vim-python-combined', { 'for': 'python' }

" ObjC enhancements
Plug 'b4winckler/vim-objc'
Plug 'msanders/cocoa.vim'

" syntax hl for markdown
Plug 'plasticboy/vim-markdown'

" enhanced c++14 highlight
Plug 'octol/vim-cpp-enhanced-highlight', { 'for': 'cpp' }

" }}}

call plug#end()

" re-enable filetype
filetype on
filetype indent on
filetype plugin indent on

" }}}

" Default mode setup ===================================================== {{{

" Behavior =============================================================== {{{

" switch off vi compatibility mode, cuz that's for grandpas
set nocompatible

" allow backspace in any context
set backspace=2

" do not create backup/swap files
set nobackup
set nowb
set noswapfile
set undofile
set undodir=~/.vim/undo/

" hide buffers instead of closing them
set hidden

" increase the size of history
set history=1000

" enable modelines
set modeline

" check 5 lines for modelines
set modelines=5

" enable magic for pattern matching
set magic

" switch off the annoying error bell
set noerrorbells
set visualbell t_vb=

" make search/replace operate on global scope by default
set gdefault

" use the_silver_searcher for :grep if available
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
endif

" ignore SCM paths from searches
set wildignore+=*/.git/,*/.hg*/,*/.svn*/

" set search ignore case based on the search string
set smartcase

" enable search highlight
set hls

" set fill character for diff
set fillchars+=diff:⣿

" do not select the end of the line
set selection=old

" user UTF-8
set encoding=utf-8

" position the cursor min 'n' from screen edge
set scrolloff=3

if has('mouse')

  " allow mouse everywhere
  set mouse=a

  " hide mouse while typing
  set mousehide

endif

" }}}

" Indent ================================================================= {{{

" set tab stop
set ts=2

" set shift width
set sw=2

" enable auto indentation
set autoindent

" use C indentation rules
set cindent

" expand tabs to spaces
set expandtab

" }}}

" Appearance ============================================================= {{{

" enable line numbers
set nu

" always show status line
set laststatus=2

" show line and cursor position
set ruler

" show trailing whitespace
set list
set listchars=tab:▸-,trail:.,extends:#,nbsp:.

" show commands while you type
set showcmd

" do not display mode changes (let vim-airline handle the job)
set noshowmode

" enable syntax highlighting
syn on

" }}}

" Folding ================================================================ {{{

" enable folding
set foldenable

" method to find folds
set foldmethod=marker

" one level fold
set foldlevel=0

" do not nest more than 2 folds
set foldnestmax=2

" }}}

" UI specific ============================================================ {{{

if has('gui_running')

  " disable menu bar
  set guioptions-=m

  " disable tool bal
  set guioptions-=T

  " disable letf scrollbar (incl if split present)
  set guioptions-=l
  set guioptions-=L

  " disable right scrollbar (incl if split present
  set guioptions-=r
  set guioptions-=R

  set guifont=MonoLisa:h16
  set macligatures
  set columns=105

  " MacVim specific settings
  if has('gui_macvim')
    set transparency=1
  endif

endif

" }}}

" }}}

" Path setup ============================================================= {{{

" set search paths (for gf, etc)
set path=.,.vim/,/usr/include/,/usr/local/include/,/opt/local/include/,
" OSX / clang specific include paths
set path+=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/c++/v1/,
set path+=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/5.1/include/,

" }}}

" Variable setup ========================================================= {{{

" Built-int ============================================================== {{{

let mapleader=','
let python_highlight_all=1

" }}}

" EasyMotion ============================================================= {{{

" enable smart case
let g:EasyMotion_smartcase=1
" eable smart signs (eg. 1 vs. !)
let g:EasyMotion_use_smartsign_us=1
" jump to first match w/ enter or space
let g:EasyMotion_enter_jump_first=1
" highlight landing for a limited time
let g:EasyMotion_landing_highlight=1
" }}}

" vim-airline ============================================================ {{{

" airline theme + powerline fonts
let g:airline_theme='dark'
if has("gui_running")
  let g:airline_powerline_fonts=0
endif

" }}}

" Promptline ============================================================= {{{

let g:promptline_theme = 'airline'

let s:options = { 'left_sections': ['b', 'a'],
      \ 'right_sections': ['warn', 'c'],
      \ 'left_only_sections': ['b', 'a', 'c']
      \ }

let g:promptline_preset = {
      \ 'a' : [ promptline#slices#user() ],
      \ 'b' : [ promptline#slices#cwd() ],
      \ 'c' : [ promptline#slices#git_status(), promptline#slices#vcs_branch(), promptline#slices#jobs(), promptline#slices#python_virtualenv() ],
      \ 'warn' : [ promptline#slices#last_exit_code() ],
      \ 'options': s:options,
      \ }

" }}}

" CtrlP ================================================================== {{{

" show MRU files by default
let g:ctrlp_cmd='CtrlPMRU'
"let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer=0
let g:ctrlp_working_path_mode=0
" use ag for search
let g:ctrlp_user_command='ag %s -l --nocolor -g ""'
let g:ctrlp_clear_cache_on_exit=1

" }}}

" ConqueTerm ============================================================= {{{

" disable warning messages
let g:ConqueTerm_StartMessages=0

" }}}

" NERDTree =============================================================== {{{

" switch off special arrow characters in NERDTree by default
if has('gui_running')
  let NERDTreeDirArrows=1
else
  let NERDTreeDirArrows=0
endif

" close the NERDTree tool window after opening a file
let NERDTreeQuitOnOpen=1

" bookmarks file
let NERDTreeBookmarksFile=expand('~/.vim/.NERDTreeBookmarks')

" }}}

" Makeshift =============================================================  {{{

" add support for ninja in makeshift
let g:makeshift_systems={
      \'build.ninja':'ninja'
      \}"

" }}}

" YouCompleteMe ========================================================== {{{

let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_global_ycm_extra_conf="~/.vim/.ycm_extra_conf.py"

" add nfo files to blacklist
let g:ycm_filetype_blacklist = {
      \ 'tagbar'  : 1,
      \ 'qf'      : 1,
      \ 'notes'   : 1,
      \ 'markdown': 1,
      \ 'unite'   : 1,
      \ 'text'    : 1,
      \ 'vimwiki' : 1,
      \ 'pandoc'  : 1,
      \ 'infolog' : 1,
      \ 'mail'    : 1,
      \ 'nfo'     : 1,
      \ 'conf'    : 1
      \}"

" }}}

" Tagbar ================================================================= {{{

" set up exuberant-ctags
let g:tagbar_ctags_bin='/usr/local/bin/ctags'

" add a definition for Objective-C to tagbar // needs build ctags from HEAD
let g:tagbar_type_objc = {
    \ 'ctagstype': 'ObjectiveC',
    \ 'kinds'    : [
      \ 'i:interface',
      \ 'I:implementation',
      \ 'p:Protocol',
      \ 'm:Object_method',
      \ 'c:Class_method',
      \ 'v:Global_variable',
      \ 'F:Object field',
      \ 'f:function',
      \ 'p:property',
      \ 't:type_alias',
      \ 's:type_structure',
      \ 'e:enumeration',
      \ 'M:preprocessor_macro',
    \ ],
    \ 'sro'       : ' ',
    \ 'kind2scope': {
      \ 'i': 'interface',
      \ 'I': 'implementation',
      \ 'p': 'Protocol',
      \ 's': 'type_structure',
      \ 'e': 'enumeration'
    \ },
    \ 'scope2kind' : {
      \ 'interface'     : 'i',
      \ 'implementation': 'I',
      \ 'Protocol'      : 'p',
      \ 'type_structure': 's',
      \ 'enumeration'   : 'e'
    \ }
  \ }

" add a definition for zsh support (requires config in ~/.ctags).
let g:tagbar_type_zsh = {
      \ 'ctagstype': 'zsh',
      \ 'kinds'    : [
        \ 'f:functions:1'
      \ ],
      \ 'fold': 0
      \ }

" }}}

" Signify ================================================================= {{{

let g:signify_disable_by_default = 1

" }}}

" Gist-vim =============================================================== {{{

" gist-vim setup for github
let g:gist_detect_filetype=1
let g:gist_open_browser_after_post=1
let g:gist_use_password_in_gitconfig=1

" }}}

" GoldenView ============================================================= {{{

" disable goldenview default mappings // overlaps w/ CtrlP
let g:goldenview__enable_default_mapping=0

" }}}

" UltiSnips ============================================================== {{{

" UltiSnips setup
let g:snips_author="wmr"
let g:snips_author_email="wmr101@gmail.com"

" favor single quotes in python snippets
let g:ultisnips_python_quoting_style='single'
" use sphinx docstring style
let g:ultisnips_python_style='sphinx'

" <NL> == <C-j>, works in term well
let g:UltiSnipsExpandTrigger="<NL>"
let g:UltiSnipsSnippetDir="~/.vim/UltiSnips"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"

" }}}

" YankRing =============================================================== {{{

" place history folder under ~/.cache/yankring-history
let g:yankring_history_dir="~/.cache/"
let g:yankring_history_file='yankring-history'

" yankring defaults overlaps w/ CtrlP
let g:yankring_replace_n_pkey='‘' "option+[
let g:yankring_replace_n_nkey='“' "option+]

" }}}

" Unite ================================================================== {{{

let g:unite_source_grep_command='ag'
let g:unite_source_grep_default_opts='--nogroup --nocolor'
let g:unite_source_grep_recursive_opt=''

call unite#filters#matcher_default#use(['matcher_fuzzy'])


call unite#custom#profile('default', 'context', {
        \'start_insert': 1
      \} )

call unite#filters#matcher_default#use(['matcher_fuzzy'])

if has("gui_running")
  " '❫ ' U+276B, UTF-8: E2 9D AB
  let g:unite_prompt='❫ '
endif

" }}}

" Syntastic ============================================================== {{{

"let g:syntastic_error_symbol='✗'
"let g:syntastic_warning_symbol='⚠'
"let g:syntastic_style_error_symbol='S✗'
"let g:syntastic_sytle_warning_symbol='S⚠'

let g:syntastic_always_populate_loc_list=1
let g:syntastic_python_checkers=['pep8', 'flake8']
" clang complete
let g:clang_library_path="/Library/Developer/CommandLineTools/usr/lib/"

" Syntastic compiler setup for c/cpp/objc/objcpp
let g:syntastic_cpp_compiler="clang++"
let g:syntastic_cpp_compiler_options=" -std=c++1y -stdlib=libc++ "

let g:syntastic_cpp_check_header=1
let g:syntastic_cpp_auto_refresh_includes=1

let g:syntastic_objc_compiler="clang"
let g:syntastic_objc_compiler_options=" -fobjc -fobjc-arc "
let g:syntastic_objc_check_header=1
let g:syntastic_objc_auto_refresh_includes=1

let g:syntastic_objcpp_compiler="clang++"
let g:syntastic_objcpp_compiler_options=" -std=c++1y -stdlib=libc++ -fobjc -fobjc-arc "
let g:syntastic_objcpp_check_header=1
let g:syntastic_objcpp_auto_refresh_includes=1

" }}}

" Autoformat ============================================================= {{{

let g:formatprg_cpp="uncrustify"
let g:formatprg_args_expr_cpp='" -lCPP -f %"'
" }}}

" }}}

" Functions ============================================================== {{{

function! s:CMake()
  let cmd=&makeprg.' '
  let cmd=substitute(cmd, "%", expand('%:p'), "")
  exe 'ConqueTermSplit' cmd
endfunction
com! CMake call s:CMake()

" use ConqueTerm w/ keyword progs
function! s:ConqueMan()
  let cmd = &keywordprg . ' '
  if cmd ==# 'man ' || cmd ==# 'man -s '
    if v:count > 0
      let cmd .= v:count.' '
    else
      let cmd = 'man '
    endif
  endif
  let cmd .= expand('<cword>')
  exe 'ConqueTermSplit' cmd
endfunction
map K :<C-u>call s:ConqueMan()<CR>

" see unsaved changes in vimdiff
function! s:DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=".filetype

endfunction
com! DiffSaved call s:DiffWithSaved()

" see unsaved changes in ksdiff (Kaleidoscope)
function! s:KSDiffWithSaved()
  :silent !mkdir -p /tmp/vimtemp
  :silent w! /tmp/vimtemp/%:t
  :silent !ksdiff % /tmp/vimtemp/%:t &
endfunction
com! KSDiffSaved call s:KSDiffWithSaved()

" add python search folders to path
function! s:AddPythonPathsToPath()
  " load paths only once
  if !exists('g:add_python_paths_complete')

python3 << END_PYTHON
import os, sys, vim
for p in sys.path:
  if os.path.isdir(p):
    vim.command(r"set path+=%s" % (p.replace(" ", r"\ ")))
END_PYTHON

  endif
  let g:add_python_paths_complete=1
endfunction
com! AddPythonPathsToPath call s:AddPythonPathsToPath()

let s:todo_search_str="TODO|FIXME|NOTE|@todo"

" get TODOs from current file
function! s:TodoCurrentFile()
  exe "silent! vimgrep! ".escape(s:todo_search_str, '|')." ".expand('%:p')
  :silent copen
endfunction
com! TodoCurrentFile call s:TodoCurrentFile()

" find TODOs recursive
function! s:TodoRecursive()
  " call shellescape() since the grep param executed in the shell
  exe "silent grep! ".escape(shellescape(s:todo_search_str), '|')." ".getcwd()
  :silent copen
endfunction
com! TodoRecursive call s:TodoRecursive()

" TODO: check if this makes any sense at all
function! s:SetupAutocmdForFileCleanupOnSave()
  augroup fileCleanup
    autocmd!
    autocmd BufWritePre * call s:RetabIfExpandTabEnabled() | :%s/\s\+$//e
  augroup END
endfunction

function! s:RetabIfExpandTabEnabled()
  if &expandtab ==# 'expandtab'
    :retab
  endif
endfunction

function! s:SetMakePrgBasedOnShebang()
  " \zs, \ze == capture start/end
  let b:shebangExecutable=matchstr(getline(1), '^#!\zs\S\+\(\s\+\S\+\)*\ze')
  let &makeprg=b:shebangExecutable." % $*"
endfunction

com! SetMakePrgBasedOnShebang call s:SetMakePrgBasedOnShebang()

" }}}

" Auto commands ========================================================== {{{

" File type specific autocommands =======================================  {{{

augroup fileTypesGroup
  autocmd!

  " set file type for .nfo files
  autocmd BufReadPre *.nfo setlocal ft=nfo

  " override filetype for ObjC++ files
  autocmd BufReadPost,BufNewFile *.m setlocal filetype=objc
  autocmd BufReadPost,BufNewFile *.mm setlocal filetype=objcpp

  " retab/remove whitespace on save
  autocmd FileType c,cpp,objc,objcpp,python,ruby,ninja,vim
        \ call s:SetupAutocmdForFileCleanupOnSave()

  " set the makeprg based on the shebang for scripts
  autocmd FileType python setlocal mp=python3\ % | call s:AddPythonPathsToPath()
  "autocmd FileType python,ruby,perl,zsh call s:SetMakePrgBasedOnShebang()
  "autocmd BufWritePost *.py,*.rb,*.pl,*.zsh call s:SetMakePrgBasedOnShebang()

  " set codepage and style for .nfo files
  autocmd FileType nfo setlocal diff encoding=cp437 lines=50 columns=85 laststatus=0 nonu
        \ |setlocal bt=nofile bh=wipe nobl noswf ro
        \ |colo badwolf

  " set custom tabsize for vim/zsh/yaml/*html* files
  autocmd FileType vim,zsh,yaml,html setlocal ts=2 sw=2 sts=2 expandtab

  " add PYTHONPATH elements to path, use python3 as makeprogram by default
  autocmd FileType vim setlocal foldmethod=marker
  autocmd FileType zsh colo badwolf

  " enable ObjC enhancements for ObjC++ as well
  autocmd FileType objcpp ru after/syntax/objc_enhanced.vim
              \| let b:match_words = '@\(implementation\|interface\):@end'

  " keep tabs for snippets, so get expanded according to active sts setting
  autocmd FileType snippets setlocal noexpandtab

augroup END

augroup switchGroup
  autocmd!
  autocmd Filetype python let b:switch_custom_definitions=
              \[
              \   {
              \       'xrange': 'range',
              \       ' range': ' xrange',
              \   }
              \]
augroup END
" }}}

" Misc autocommands ====================================================== {{{

augroup variousGroup
  autocmd!

  " auto retab
  autocmd BufWritePre * call s:RetabIfExpandTabEnabled() | :%s/\s\+$//e

  " disable syntax hl for huge files
  autocmd BufWinEnter * if line2byte(line("$") + 1) > 1000000 | syntax clear | endif

  " change the working directory to the current file's directory
  autocmd BufEnter * silent! lcd %:p:h

augroup END
" }}}

" }}}

" Keyboard mappings ====================================================== {{{

" Navigation ============================================================= {{{

" treat wrapped lines as normal lines
nnoremap j gj
nnoremap k gk
xnoremap j gj
xnoremap k gk

" go up and down in a faster peace option+j,k
nnoremap ∆ 4j
nnoremap ˚ 4k
xnoremap ∆ 4j
xnoremap ˚ 4k

" navigate between windows
nmap gh <C-w>h
nmap gj <C-w>j
nmap gk <C-w>k
nmap gl <C-w>l

" emacs/mac textfield like navigation in insert mode
" this is sort of an abomination, but I guess I am lazier than religious
inoremap <C-a>  <Esc>^i
inoremap <C-e>  <Esc>$a
inoremap <C-k>  <Esc>d$a
inoremap <C-u>  <Esc>ddO

" move current line up or down in normal mode
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==

nnoremap <Leader>ag    :Ag<space>

" default make commands
nnoremap <silent> <Leader>ma    :make<CR>
nnoremap <silent> <Leader>mr    :make all<CR>
nnoremap <silent> <Leader>mc    :make clean<CR>

" kill the highlight of last search result with: <Leader>/
nnoremap <silent> <Leader>/    :nohlsearch<CR>

" exit buffer
nnoremap <silent> <Leader>qq   :q!<CR>
nnoremap <silent> <Leader>qw   :wq!<CR>

" cd to current file's working dir
nnoremap <Leader>cd    :cd %:p:h<CR>:pwd<CR>

" edit rc files
nnoremap <silent> <Leader>rc   :tabe ~/.vimrc<CR>
nnoremap <silent> <Leader>zrc  :tabe ~/.zshrc<CR>

" diff unsaved
nnoremap <silent> <Leader>vdc :<C-u>DiffSaved<CR>
nnoremap <silent> <Leader>dc :KSDiffSaved<CR>

" toggle folds w/ space
nnoremap <space> za


" }}}

" Plugin mappings ======================================================== {{{

" vim-fugitive mappings ================================================-- {{{
nnoremap [fugitive]  <Nop>
nmap    <Leader>g [fugitive]

nnoremap <silent> [fugitive]s   :Gstatus<CR>
nnoremap <silent> [fugitive]c   :Gcommit<CR>
nnoremap <silent> [fugitive]d   :Gdiff<CR>
nnoremap <silent> [fugitive]l   :Extradite<CR>
nnoremap <silent> [fugitive]i   :SignifyToggle<CR>
"}}}

" Unite mappings  ======================================================== {{{

nnoremap [unite]    <Nop>
nmap ,n  [unite]

nnoremap <silent> [unite]c  :<C-u>UniteWithCurrentDir
            \ -buffer-name=files buffer bookmark file file/new<CR>

nnoremap <silent> [unite]s   :<C-u>Unite<CR>
nnoremap <silent> [unite]t   :<C-u>Unite tab<CR>
nnoremap <silent> [unite]b   :<C-u>Unite buffer<CR>
nnoremap <silent> [unite]fr  :<C-u>Unite file_rec/async<CR>
nnoremap <silent> [unite]g   :<C-u>Unite grep<CR>
nnoremap <silent> [unite]r   :<C-u>Unite -start-insert file_rec/async:!<CR>

" }}}

" YouCompleteMe mappings  ================================================ {{{

noremap [YCM] <Nop>
nmap <Leader>y [YCM]
nmap [YCM]d   :<C-u>YcmCompleter GoToDefinition<CR>
nmap [YCM]e   :<C-u>YcmCompleter GoToDeclaration<CR>
nmap [YCM]g   :<C-u>YcmCompleter GoTo<CR>
nmap [YCM]i   :<C-u>YcmCompleter GoToImplementation<CR>


" }}}

" EasyMotion mappings ==================================================== {{{

" backlash to activate
map <Leader> <Plug>(easymotion-prefix)
"nmap s <Plug>(easymotion-s2)
"nmap t <Plug>(easymotion-t2)
" replace normal search
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
" }}}

" GoldenView ============================================================= {{{

" split to tiled windows
nmap <silent> <C-L>  <Plug>GoldenViewSplit

" quickly switch current window with the main pane
" and toggle back
noremap [layout]  <Nop>
nmap <Leader>l  [layout]
nmap <silent> [layout]m    <Plug>GoldenViewSwitchMain
nmap <silent> [layout]t    <Plug>GoldenViewSwitchToggle

" resize current window appropriately
nmap <silent> <Leader>[layout]l    <Plug>GoldenViewResize
" }}}

" Tabular ================================================================ {{{

noremap [tabular] <Nop>
nmap <Leader>t [tabular]
nmap [tabular]p  :<C-u>Tabularize /:/l0l0l0l1<CR>
vmap [tabular]p  :<C-u>Tabularize /:/l0l0l0l1<CR>
vmap [tabular]h  :<C-u>Tabularize /#/<CR>


nnoremap [tabular]s :<C-u>Tabularize<Space>/
nnoremap <silent> [tabular]t   :<C-u>Tabularize<CR>

" }}}

" Misc =================================================================== {{{

" Dash
nmap <silent> <Leader>K   <Plug>DashSearch

" Todo stuff
nnoremap <silent> <Leader>tf  :<C-u>TodoCurrentFile<CR>
nnoremap <silent> <Leader>tr  :<C-u>TodoRecursive<CR>

" tool windows
nnoremap <silent> <Leader>nt   :<C-u>NERDTree<CR>
nnoremap <silent> <Leader>tb   :<C-u>TagbarToggle<CR>
nnoremap <silent> <Leader>uu   :<C-u>GundoToggle<CR>
" switch
nnoremap <Leader><Leader>s :Switch<CR>

" UltiSnips fixes
inoremap <c-x><c-k> <c-x><c-k>
" }}}

" }}}

" }}}

" Color scheme =========================================================== {{{

if has('gui_running')
  colo catppuccin_mocha
else
    colo distinguished
endif

" }}}

