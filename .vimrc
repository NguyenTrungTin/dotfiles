" ----------------------------------------------------------------------
" | General Settings                                                   |
" ----------------------------------------------------------------------

set nocompatible                    " Don't make Vim vi-compatibile.

syntax on                           " Enable syntax highlighting.

if has('autocmd')
    filetype plugin indent on
    "           │     │    └──────── Enable file type detection.
    "           │     └───────────── Enable loading of indent file.
    "           └─────────────────── Enable loading of plugin files.
endif

set autoindent                      " Copy indent to the new line.

set backspace=indent                " ┐
set backspace+=eol                  " │ Allow `backspace`
set backspace+=start                " ┘ in insert mode.

set backupdir=~/.vim/backups        " Set directory for backup files.

if has('wildignore')
    set backupskip=/tmp/*           " ┐ Don't create backups
    set backupskip+=/private/tmp/*  " ┘ for certain files.
endif

set clipboard=unnamed               " ┐
                                    " │ Use the system clipboard
if has('unnamedplus')               " │ as the default register.
    set clipboard+=unnamedplus      " │
endif                               " ┘

set cpoptions+=$                    " When making a change, don't
                                    " redisplay the line, and instead,
                                    " put a `$` sign at the end of
                                    " the changed text.

if has('syntax')
    " set colorcolumn=73              " Highlight certain column(s).
    set cursorline                  " Highlight the current line.
endif

set directory=~/.vim/swaps          " Set directory for swap files.
set encoding=utf-8 nobomb           " Use UTF-8 without BOM.

if has('cmdline_hist')
    set history=5000                " Increase command line history.
endif

if has('extra_search')

    set hlsearch                    " Enable search highlighting.

    set incsearch                   " Highlight search pattern
                                    " as it is being typed.
endif

set ignorecase                      " Ignore case in search patterns.


set laststatus=2                    " Always show the status line.

set lazyredraw                      " Do not redraw the screen while
                                    " executing macros, registers
                                    " and other commands that have
                                    " not been typed.

set listchars=tab:▸\                " ┐
set listchars+=trail:·              " │ Use custom symbols to
set listchars+=eol:↴                " │ represent invisible characters.
set listchars+=nbsp:_               " ┘

set magic                           " Enable extended regexp.
set mousehide                       " Hide mouse pointer while typing.
set noerrorbells                    " Disable error bells.

set nojoinspaces                    " When using the join command,
                                    " only insert a single space
                                    " after a `.`, `?`, or `!`.

set nostartofline                   " Kept the cursor on the same column.
set number                          " Show line number.

if has('linebreak')
    set numberwidth=5               " Increase the minimal number of
                                    " columns used for the `line number`.
endif

set report=0                        " Report the number of lines changed.

if has('cmdline_info')
    set ruler                       " Show cursor position.
endif

set scrolloff=5                     " When scrolling, keep the cursor
                                    " 5 lines below the top and 5 lines
                                    " above the bottom of the screen.

set shortmess=aAItW                 " Avoid all the hit-enter prompts.

if has('cmdline_info')
    set showcmd                     " Show the command being typed.
endif

set showmode                        " Show current mode.

if has('syntax')
    set spelllang=en_us             " Set the spellchecking language.
endif

set smartcase                       " Override `ignorecase` option
                                    " if the search pattern contains
                                    " uppercase characters.

if has('syntax')
    set synmaxcol=2500              " Limit syntax highlighting (this
                                    " avoids the very slow redrawing
                                    " when files contain long lines).
endif

set tabstop=4                       " ┐
set softtabstop=4                   " │ Set global <TAB> settings.
set shiftwidth=4                    " │
set expandtab                       " ┘

set ttyfast                         " Enable fast terminal connection.

if has('persistent_undo')
    set undodir=~/.vim/undos        " Set directory for undo files.
    set undofile                    " Automatically save undo history.
endif

if has('virtualedit')
    set virtualedit=all             " Allow cursor to be anywhere.
endif

set visualbell                      " ┐
set noerrorbells                    " │ Disable beeping and window flashing.
set t_vb=                           " ┘ https://vim.wikia.com/wiki/Disable_beeping

if has('wildmenu')
    set wildmenu                    " Enable enhanced command-line
endif                               " completion (by hitting <TAB> in
                                    " command mode, Vim will show the
                                    " possible matches just above the
                                    " command line with the first
                                    " match highlighted).
if has('windows')
    set winminheight=0              " Allow windows to be squashed.
endif


" ----------------------------------------------------------------------
" | Plugins                                                            |
" ----------------------------------------------------------------------

" Use vim-plug to manage the vim plugins
" https://github.com/junegunn/vim-plug

    call plug#begin('~/.vim/plugged')     " Specify a directory for plugins

    " Utility
    Plug 'scrooloose/nerdtree'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'christoomey/vim-tmux-navigator'
    Plug 'chrisbra/unicode.vim'
    Plug 'godlygeek/tabular'
    Plug 'tpope/vim-surround'
	Plug 'terryma/vim-multiple-cursors'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-sensible'
    Plug 'tpope/vim-unimpaired'
	Plug 'matze/vim-move'
    Plug 'tomtom/tcomment_vim'
    Plug 'tpope/vim-commentary'
	Plug 'junegunn/rainbow_parentheses.vim'
    Plug 'amix/vim-zenroom2'
    Plug 'xolox/vim-easytags'
    Plug 'xolox/vim-misc'
	Plug 'easymotion/vim-easymotion'
    Plug 'majutsushi/tagbar'
    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/limelight.vim'
	Plug 'junegunn/gv.vim'
	Plug 'junegunn/vim-easy-align'
	Plug 'junegunn/vim-emoji'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
	Plug 'junegunn/fzf.vim'
	Plug 'mileszs/ack.vim'

    " Generic Language Support
    Plug 'Valloric/YouCompleteMe'
    Plug 'scrooloose/syntastic'
    Plug 'editorconfig/editorconfig-vim'
    Plug 'mattn/webapi-vim'
    Plug 'mattn/emmet-vim'
	Plug 'jiangmiao/auto-pairs'
    Plug 'nathanaelkane/vim-indent-guides'
	Plug 'SirVer/ultisnips'
	Plug 'honza/vim-snippets'
	Plug 'ervandew/supertab'
    Plug 'airblade/vim-gitgutter'
    Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
	" Plug 'Shougo/neocomplete.vim'
    " Plug 'w0rp/ale' " Disable because of conflicting with YouCompleteMe
    " Plug 'sheerun/vim-polyglot' " Disable because of conficting with vim-go

	" Conquer of Completion
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

	" HTML/CSS
    Plug 'ap/vim-css-color'
    Plug 'othree/html5.vim'
	Plug 'wavded/vim-stylus'
    Plug 'tpope/vim-haml'

    " Javascript
	Plug 'pangloss/vim-javascript'
	Plug 'othree/javascript-libraries-syntax.vim'
    Plug 'marijnh/tern_for_vim', { 'do': 'yarn install'}

    " Typescript
	Plug 'leafgarland/typescript-vim'
	Plug 'Quramy/tsuquyomi'

	" Node
	Plug 'moll/vim-node'

	" GraphQL
	Plug 'jparise/vim-graphql'

    " JSON
    Plug 'elzr/vim-json'

    " Markdown
    Plug 'plasticboy/vim-markdown'
    Plug 'suan/vim-instant-markdown'

    " React
	Plug 'MaxMEllon/vim-jsx-pretty'

    " Vue
    Plug 'posva/vim-vue'

    " Angular
    Plug 'mhartington/vim-angular2-snippets'

    " Go Lang
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

    " Python
	Plug 'ambv/black'

    " Ruby
    Plug 'vim-ruby/vim-ruby'
    Plug 'tpope/vim-rails'

    " Themes
	Plug 'ryanoasis/vim-devicons'
    Plug 'altercation/vim-colors-solarized'
    Plug 'joshdick/onedark.vim'
	Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'morhetz/gruvbox'
	Plug 'sonph/onehalf'
    Plug 'mhartington/oceanic-next'
	Plug 'kaicataldo/material.vim'
    Plug 'jdkanani/vim-material-theme'
	Plug 'kristijanhusak/vim-hybrid-material'
    Plug 'whatyouhide/vim-gotham'
	Plug 'raphamorim/lucario'
    Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
	Plug 'chriskempson/base16-vim'
	Plug 'h404bi/base16-snazzy-scheme'
	Plug 'ajh17/Spacegray.vim'
    Plug 'arcticicestudio/nord-vim'
    " Initialize plugin system
    call plug#end()


" ----------------------------------------------------------------------
" | Plugins - Vim-Go                                              |
" ----------------------------------------------------------------------

" https://github.com/fatih/vim-go-tutorial

" let g:go_fmt_fail_silently = 1
let g:go_fmt_command = "goimports"
let g:go_fmt_options = {
			\ 'goimports': '-local do/',
			\ }

let g:go_debug_windows = {
      \ 'vars':  'leftabove 35vnew',
      \ 'stack': 'botright 10new',
	  \ }


let g:go_test_prepend_name = 1
let g:go_list_type = "quickfix"
let g:go_auto_type_info = 1
let g:go_auto_sameids = 0
let g:go_info_mode = "gocode"

let g:go_def_mode = "godef"
let g:go_echo_command_info = 1
let g:go_autodetect_gopath = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_metalinter_enabled = ['vet', 'golint']

" let g:go_highlight_space_tab_error = 0
" let g:go_highlight_array_whitespace_error = 0
" let g:go_highlight_trailing_whitespace_error = 0
" let g:go_highlight_extra_types = 0
" let g:go_highlight_build_constraints = 1
" let g:go_highlight_types = 0
" let g:go_highlight_operators = 1
" let g:go_highlight_format_strings = 0
" let g:go_highlight_function_calls = 0
" let g:go_gocode_propose_source = 1

let g:go_modifytags_transform = 'camelcase'
let g:go_fold_enable = []

nmap <C-g> :GoDecls<cr>
imap <C-g> <esc>:<C-u>GoDecls<cr>

" run :GoBuild or :GoTestCompile based on the go file

function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

augroup go
  autocmd!

  autocmd FileType go nmap <silent> <leader>gv <Plug>(go-def-vertical)
  autocmd FileType go nmap <silent> <leader>gs <Plug>(go-def-split)
  autocmd FileType go nmap <silent> <leader>gd <Plug>(go-def-tab)

  autocmd FileType go nmap <silent> <leader>gx <Plug>(go-doc-vertical)

  autocmd FileType go nmap <silent> <leader>gi <Plug>(go-info)
  autocmd FileType go nmap <silent> <leader>gl <Plug>(go-metalinter)

  autocmd FileType go nmap <silent> <leader>gb :<C-u>call <SID>build_go_files()<CR>
  autocmd FileType go nmap <silent> <leader>gt  <Plug>(go-test)
  autocmd FileType go nmap <silent> <leader>gr  <Plug>(go-run)
  autocmd FileType go nmap <silent> <leader>ge  <Plug>(go-install)

  autocmd FileType go nmap <silent> <leader>gc <Plug>(go-coverage-toggle)

  " I like these more!
  autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
  autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
  autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
  autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')
augroup END


" ----------------------------------------------------------------------
" | Plugins - Vim-black                                              |
" ----------------------------------------------------------------------
" https://github.com/ambv/black

autocmd BufWritePre *.py execute ':Black'


" ----------------------------------------------------------------------
" | Plugins - Vim-Airline                                              |
" ----------------------------------------------------------------------

" Airline Powerline Symbols

let g:airline_powerline_fonts = 1

" ----------------------------------------------------------------------
" | Plugins - Emmet                                                    |
" ----------------------------------------------------------------------

" Redefine trigger key for Emmet
" http://docs.emmet.io/cheat-sheet/
" let g:user_emmet_leader_key="C-y"

"Using <Tab> key as abbreviation expander on Emmet.vim
" For <Tab> key, please take a look on SuperTab plugin for more detail.
" https://coderwall.com/p/_uhrxw/using-tab-key-as-abbreviation-expander-on-emmet-vim

imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" Load custom Emmet snippets
" http://docs.emmet.io/customization/snippets/

let g:user_emmet_settings = webapi#json#decode(join(readfile(expand("~/.vim/snippets/emmet.json")), "\n"))


" ----------------------------------------------------------------------
" | Plugins - Indent Guides                                            |
" ----------------------------------------------------------------------

" Set custom indent colors
" https://github.com/nathanaelkane/vim-indent-guides#setting-custom-indent-colors

let g:indent_guides_auto_colors = 0

autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd
        \ guibg=#00323D
        \ ctermbg=Magenta

autocmd VimEnter,Colorscheme * :hi IndentGuidesEven
        \ guibg=#073642
        \ ctermbg=DarkMagenta


" ----------------------------------------------------------------------
" | Plugins - Markdown                                                 |
" ----------------------------------------------------------------------

" Disable Folding
" https://github.com/plasticboy/vim-markdown#disable-folding

let g:vim_markdown_folding_disabled=1


" ----------------------------------------------------------------------
" | Plugins - Instant Markdown                                         |
" ----------------------------------------------------------------------

" Do not automatically launch the preview
" window when the markdown file is open.
" https://github.com/suan/vim-instant-markdown#ginstant_markdown_autostart

let g:instant_markdown_autostart = 0


" ----------------------------------------------------------------------
" | Plugins - neocomplete.vim                                           |
" ----------------------------------------------------------------------

" Enable `neocomplete` by default
let g:neocomplete#enable_at_startup = 1

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" Make `<TAB>` autocomplete

inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" Make `Shift+Tab` insert `Tab` character.

inoremap <S-TAB> <C-V><TAB>


" ----------------------------------------------------------------------
" | Plugins - Syntastic                                                |
" ----------------------------------------------------------------------

" Enable/disable syntastic integration

let g:airline#extensions#syntastic#enabled = 1

" Customize Symbols
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
let g:syntastic_style_error_symbol = '✘'
let g:syntastic_style_warning_symbol = "▲"

" Inform Syntastic which checkers to use based on file types
" https://github.com/scrooloose/syntastic#faq

let g:syntastic_javascript_checkers = [ 'eslint' ]

" Disable syntax checking by default
let g:syntastic_mode_map = {
    \ "active_filetypes": [],
    \ "mode": "passive",
    \ "passive_filetypes": []
\}


" ----------------------------------------------------------------------
" | Plugins - vim-easymotion
" ----------------------------------------------------------------------

" Disable default mappings
let g:EasyMotion_do_mapping = 0

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1


" ----------------------------------------------------------------------
" | Plugins - Vim-move                                                 |
" ----------------------------------------------------------------------

" Custom modifier for keybindings
let g:move_key_modifier = 'C'


" ----------------------------------------------------------------------
" | Plugins - Tagbar
" ----------------------------------------------------------------------

" Setting for Go Lang
" https://github.com/jstemmer/gotags#vim-tagbar-configuration

let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }


" ----------------------------------------------------------------------
" | Plugins - vim-easy-align
" ----------------------------------------------------------------------

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" ----------------------------------------------------------------------
" | Plugins - vim-emoji
" ----------------------------------------------------------------------

" Using Emojis as Git Gutter symbols
" let g:gitgutter_sign_added = emoji#for('small_blue_diamond')
" let g:gitgutter_sign_modified = emoji#for('small_orange_diamond')
" let g:gitgutter_sign_removed = emoji#for('small_red_triangle')
" let g:gitgutter_sign_modified_removed = emoji#for('collision')

"  Emoji completion
" au FileType gitcommit setlocal completefunc=emoji#complete
" setlocal completefunc=emoji#complete
" command! -range EmojiReplace <line1>,<line2>s/:\([^:]\+\):/\=emoji#for(submatch(1), submatch(0))/g


" ----------------------------------------------------------------------
" | Plugins - limelight.vim
" ----------------------------------------------------------------------

" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" Default: 0.5
let g:limelight_default_coefficient = 0.5

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 7

" Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
let g:limelight_bop = '^\s'
let g:limelight_eop = '\ze\n^\s'

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1

" autocmd! User GoyoEnter Limelight
" autocmd! User GoyoLeave Limelight!


" ----------------------------------------------------------------------
" | Plugins - YouCompleteMe
" ----------------------------------------------------------------------

" Use Python 3
let g:ycm_server_python_interpreter = '/usr/bin/python3'

" Auto Close preview window after insertion
let g:ycm_autoclose_preview_window_after_completion = 1

" Disable showing error when server crash
let g:ycm_log_level = 'critical'
let g:ycm_server_use_vim_stdout = 0


" ----------------------------------------------------------------------
" | Plugins - ALE (Asynchronous Lint Engine)
" ----------------------------------------------------------------------

" Disable because it conflict with YouCompleteMe

" Enable Completion
" let g:ale_completion_enabled = 1

" Enable Airline intergration
" let g:airline#extensions#ale#enabled = 1

" Customize Symbols
" let g:ale_sign_error = '✘' " Customize default symbol '>>' or '◉'
" let g:ale_sign_warning = '▲' " Customize default symbol '--'


" ----------------------------------------------------------------------
" | Plugins - ack/ag.vim
" ----------------------------------------------------------------------

" Use Silver Searcher (ag) for maximum speed
if executable('ag')
  let g:ackprg = 'ag --vimgrep --smart-case'
endif

" https://robots.thoughtbot.com/faster-grepping-in-vim
" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif


" ----------------------------------------------------------------------
" | Plugins - Solarized Color Scheme
" ----------------------------------------------------------------------

" Set custom configurations for when the
" Solarized theme is used from vim's Terminal mode
" http://ethanschoonover.com/solarized/vim-colors-solarized#advanced-configuration

if !has("gui_running")
    let g:solarized_contrast = "high"
    let g:solarized_termcolors = 256
    let g:solarized_termtrans = 1
    let g:solarized_visibility = "high"
endif


" ----------------------------------------------------------------------
" | Plugins - Material.vim
" ----------------------------------------------------------------------

" let g:material_theme_style = 'default'
let g:material_terminal_italics = 1


" ----------------------------------------------------------------------
" | Plugins - vim-javascript
" ----------------------------------------------------------------------

let g:javascript_plugin_jsdoc = 1


" ----------------------------------------------------------------------
" | Plugins - Oceanic-Next
" ----------------------------------------------------------------------

let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1


" ----------------------------------------------------------------------
" | Plugins - Gitgutter
" ----------------------------------------------------------------------

" Disable Gitgutter by default
let g:gitgutter_enabled = 0

" Customize Symbols
let g:gitgutter_sign_added = '⚡' "✔✚
let g:gitgutter_sign_modified = '➜'
let g:gitgutter_sign_removed = '✘'
let g:gitgutter_sign_modified_removed = '✘'


" ----------------------------------------------------------------------
" | Plugins - deoplete.nvim
" ----------------------------------------------------------------------

let g:deoplete#enable_at_startup = 1

" ----------------------------------------------------------------------
" | Plugins - UltiSnips
" ----------------------------------------------------------------------

" YouCompleteMe and UltiSnips compatibility, with the helper of supertab
" (via http://stackoverflow.com/a/22253548/1626737)
let g:SuperTabDefaultCompletionType    = '<C-n>'
let g:SuperTabCrMapping                = 0
let g:UltiSnipsExpandTrigger           = '<tab>'
let g:UltiSnipsJumpForwardTrigger      = '<tab>'
let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'
let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']

" ----------------------------------------------------------------------
" | Plugins - vim-prettier
" ----------------------------------------------------------------------

" Autoformat
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

" Number of spaces per indentation level
" Prettier default: 2
let g:prettier#config#tab_width = 4

" Use tabs over spaces
" Prettier default: false
let g:prettier#config#use_tabs = 'true'

" Fit code within this line limit
" let g:prettier#config#print_width = 120


" ----------------------------------------------------------------------
" | Helper Functions                                                   |
" ----------------------------------------------------------------------

function! GetGitBranchName()

    let branchName = ""

    if exists("g:loaded_fugitive")
        let branchName = "[" . fugitive#head() . "]"
    endif

    return branchName

endfunction

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

function! StripTrailingWhitespaces()

    " Save last search and cursor position
    let searchHistory = @/
    let cursorLine = line(".")
    let cursorColumn = col(".")

    " Strip trailing whitespaces
    %s/\s\+$//e

    " Restore previous search history and cursor position
    let @/ = searchHistory
    call cursor(cursorLine, cursorColumn)

endfunction

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

function! ToggleLimits()

    " [51,73]
    "   - git commit message
    "     http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html
    " [81]
    "   - general use

    if ( &colorcolumn == "73" )
        set colorcolumn+=51,81
    else
        set colorcolumn-=51,81
    endif

endfunction

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

function! ToggleRelativeLineNumbers()

    if ( &relativenumber == 1 )
        set number
    else
        set relativenumber
    endif

endfunction


" ----------------------------------------------------------------------
" | Autoindent on paste                                                 |
" ----------------------------------------------------------------------

let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

" ----------------------------------------------------------------------
" | Automatic Commands                                                 |
" ----------------------------------------------------------------------

if has("autocmd")

    " Autocommand Groups
    " http://learnvimscriptthehardway.stevelosh.com/chapters/14.html

    " - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    " Automatically reload the configurations from
    " the `~/.vimrc` file whenever they are changed

    augroup auto_reload_vim_configs

        autocmd!
        autocmd BufWritePost vimrc source $MYVIMRC

    augroup END

    " - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    " Use relative line numbers
    " http://jeffkreeftmeijer.com/2012/relative-line-numbers-in-vim-for-super-fast-movement/

    augroup relative_line_numbers

        autocmd!

        " Automatically switch to absolute line numbers when vim loses focus
        autocmd FocusLost * :set number

        " Automatically switch to relative line numbers when vim gains focus
        autocmd FocusGained * :set relativenumber

        " Automatically switch to absolute line numbers when vim is in insert mode
        autocmd InsertEnter * :set number

        " Automatically switch to relative line numbers when vim is in normal mode
        autocmd InsertLeave * :set relativenumber

    augroup END

    " - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    " Automatically strip the trailing whitespaces when files are saved

    augroup strip_trailing_whitespaces

        " List of file types that use the trailing whitespace
		" should not be removed:

        let excludedFileTypes = []

        " Only strip the trailing whitespaces if the file type is
        " not in the excluded file types list

        autocmd!
        autocmd BufWritePre * if index(excludedFileTypes, &ft) < 0 | :call StripTrailingWhitespaces()

    augroup END

endif


" ----------------------------------------------------------------------
" | Color Scheme                                                       |
" ----------------------------------------------------------------------

" For Vim 7
set t_Co=256                   " Enable full-color support

" Termguicolors for Vim 8
if (has("termguicolors"))
  set termguicolors
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

set background=dark            " Use colors that look good
                               " on a dark background

" Set font for Gui
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Source\ Code\ Pro\ for\ Powerline 11
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

" Colorscheme
colorscheme nord          " Use custom color scheme

" ----------------------------------------------------------------------
" | Cursor                                                             |
" ----------------------------------------------------------------------

" Set cursor change style in different mode

if has("autocmd")
  au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
  au InsertEnter,InsertChange *
    \ if v:insertmode == 'i' |
    \   silent execute '!echo -ne "\e[6 q"' | redraw! |
    \ elseif v:insertmode == 'r' |
    \   silent execute '!echo -ne "\e[4 q"' | redraw! |
    \ endif
  au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif


" ----------------------------------------------------------------------
" | Key Mappings                                                       |
" ----------------------------------------------------------------------

" Use a different mapleader (default is "\")
let mapleader = ","

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" Bind jj to <Esc> in insert mode
inoremap jj <esc>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" [,f] Open fzf
map <leader>f :FZF<CR>

" [,!f] Open fzf on fullscreen
map <leader>!f :FZF!<CR>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" [,\] to grep word under cursor
" :grep will map to 'ag' command instead for maximum speed (see ack/ag.vim)
nnoremap <leader>\ :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>


" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" [,* ] Search and replace the word under the cursor
nmap <leader>* :%s/\<<C-r><C-w>\>//<Left>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" [,cc] Toggle code comments
" https://github.com/tomtom/tcomment_vim
map <leader>cc :TComment<CR>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" [,cr] Calculate result
" http://vimcasts.org/e/56
nmap <leader>cr 0yt=A<C-r>=<C-r>"<CR><Esc>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" [,cs] Clear search
map <leader>cs <Esc>:noh<CR>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" [,l ] Toggle `set list`
nmap <leader>l :set list!<CR>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" [,n ] Toggle `set relativenumber`
nmap <leader>n :call ToggleRelativeLineNumbers()<CR>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" [,ss] Strip trailing whitespace
nmap <leader>ss :call StripTrailingWhitespaces()<CR>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" [,sh] Show hex dump.

nmap <leader>sh :%!xxd<CR>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" [,sr] Strip carriage returns.

nmap <leader>sr :%s/\r//g<CR>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" [,s] easymotion
nmap <leader>s <Plug>(easymotion-overwin-f)

" JK motions: Line motions
" [,j] easymotion-j
map <Leader>j <Plug>(easymotion-j)

" [,k] easymotion-k
map <Leader>k <Plug>(easymotion-k)

" 2-character search motion
nmap <leader>sw <Plug>(easymotion-s2)

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" [,t ] Toggle NERDTree
map <leader>t :NERDTreeToggle<CR>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" [,ti] Toggle indent
nmap <leader>ti <Plug>IndentGuidesToggle

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" [,tl] Toggle show limits
nmap <leader>tl :call ToggleLimits()<CR>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" [,ts] Toggle Syntastic
nmap <leader>ts :SyntasticToggleMode<CR>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" Jump between errors in quickfix list
nnoremap <leader>cn :cnext<CR>
nnoremap <leader>cm :cprevious<CR>
nnoremap <leader>ca :cclose<CR>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" [,p] :Prettier
nmap <Leader>p <Plug>(Prettier)

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" [,v ] Make the opening of the `.vimrc` file easier
nmap <leader>v :vsp $MYVIMRC<CR>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" [,W ] Sudo write
map <leader>W :w !sudo tee %<CR>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" [,gd] Toggle Git differences.

map <leader>gg :GitGutterToggle<CR>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" Show all git commits for this project
map <leader>gm :GV<CR>

" Show commits that affected the current file
map <leader>g! :GV!<CR>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" Zen distraction mode
nnoremap <silent> <leader>z :Goyo<cr>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" Toggle Tagbar
nmap <F8> :TagbarToggle<CR>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" Automatic run Ctag
nnoremap <f5> :!ctags -R<CR>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" Edit file in current path
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" ALE Fixing Problems
" nmap <F7> <Plug>(ale_fix)


" ----------------------------------------------------------------------
" | Status Line                                                        |
" ----------------------------------------------------------------------

" Terminal types:
"
"   1) term  (normal terminals, e.g.: vt100, xterm)
"   2) cterm (color terminals, e.g.: MS-DOS console, color-xterm)
"   3) gui   (GUIs)

" highlight ColorColumn
"     \ term=NONE
"     \ cterm=NONE  ctermbg=237    ctermfg=NONE
"     \ gui=NONE    guibg=#073642  guifg=NONE
"
" highlight CursorLine
"     \ term=NONE
"     \ cterm=NONE  ctermbg=235  ctermfg=NONE
"     \ gui=NONE    guibg=#073642  guifg=NONE
"
" highlight CursorLineNr
"     \ term=bold
"     \ cterm=bold  ctermbg=NONE   ctermfg=178
"     \ gui=bold    guibg=#073642  guifg=Orange
"
" highlight LineNr
"     \ term=NONE
"     \ cterm=NONE  ctermfg=241    ctermbg=NONE
"     \ gui=NONE    guifg=#839497  guibg=#073642
"
" highlight User1
"     \ term=NONE
"     \ cterm=NONE  ctermbg=237    ctermfg=Grey
"     \ gui=NONE    guibg=#073642  guifg=#839496

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

set statusline=
set statusline+=%1*            " User1 highlight
set statusline+=\ [%n]         " Buffer number
set statusline+=\ %{GetGitBranchName()} " Git branch name
set statusline+=\ [%f]         " Path to the file
set statusline+=%m             " Modified flag
set statusline+=%r             " Readonly flag
set statusline+=%h             " Help file flag
set statusline+=%w             " Preview window flag
set statusline+=%y             " File type
set statusline+=[
set statusline+=%{&ff}         " File format
set statusline+=:
set statusline+=%{strlen(&fenc)?&fenc:'none'} " File encoding
set statusline+=]
set statusline+=%=             " Left/Right separator
set statusline+=%c             " File encoding
set statusline+=,
set statusline+=%l             " Current line number
set statusline+=/
set statusline+=%L             " Total number of lines
set statusline+=\ (%P)\        " Percent through file

" Example result:
"
"  [1] [master] [vim/vimrc][vim][unix:utf-8]            17,238/381 (59%)


" ----------------------------------------------------------------------
" | Local Settings                                                     |
" ----------------------------------------------------------------------

" Load local settings if they exist
"
" Note: The following needs to remain at the end of this file in
"       order to allow any of the above settings to be overwritten
"       by the local ones

if filereadable(glob("~/.vimrc.local"))
    source ~/.vimrc.local
endif
