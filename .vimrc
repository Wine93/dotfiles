" -*- mode: vim -*-
" vim: set expandtab tabstop=4 shiftwidth=4 foldmethod=indent:

" Bundle {
    set nocompatible
    filetype off
    call plug#begin('~/.vim/plugged')
        Plug 'airblade/vim-gitgutter'
        Plug 'altercation/vim-colors-solarized'
        Plug 'bronson/vim-trailing-whitespace'
        Plug 'dyng/ctrlsf.vim'
        Plug 'ervandew/screen'
        Plug 'ervandew/supertab'
        Plug 'fatih/vim-go'
        Plug 'godlygeek/tabular'
        Plug 'gregsexton/MatchTag'
        Plug 'iamcco/markdown-preview.vim'
        Plug 'ianva/vim-youdao-translater'
        Plug 'Konfekt/FastFold'
        Plug 'kshenoy/vim-signature'
        Plug 'Lokaltog/vim-easymotion'
        Plug 'majutsushi/tagbar'
        Plug 'mattn/gist-vim'
        Plug 'mattn/webapi-vim'
        Plug 'mbbill/undotree'
        Plug 'powerline/powerline'
        Plug 'scrooloose/nerdcommenter'                   " Comment functions so powerful—no comment necessary.
        Plug 'scrooloose/nerdtree'
        Plug 'sjl/gundo.vim'
        Plug 'suan/vim-instant-markdown'
        Plug 'tacahiroy/ctrlp-funky'
        Plug 'terryma/vim-multiple-cursors'
        Plug 'tpope/vim-fugitive'
        Plug 'tpope/vim-surround'
        Plug 'Valloric/YouCompleteMe'
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'
        Plug 'vim-scripts/DrawIt'
        Plug 'vim-scripts/matchit.zip'
        Plug 'vimcn/vimcdoc'
        Plug 'Yggdroot/indentLine'                        " A vim plugin to display the indention levels with thin vertical lines
        Plug 'Yggdroot/LeaderF', { 'do': './install.sh' } " An efficient fuzzy finder that helps to locate files, buffers, mrus, gtags, etc. on the fly for both vim and neovim.
        Plug 'francoiscabrol/ranger.vim'

        "Plug 'Blackrush/vim-gocode'
        "Plug 'bling/vim-bufferline'
        "Plug 'dgryski/vim-godef'
        "Plug 'humiaozuzu/TabBar'
        "Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
        "Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
        "Plug 'junegunn/fzf.vim'
        "Plug 'kien/ctrlp.vim'
        "Plug 'mileszs/ack.vim'
        "Plug 'scrooloose/syntastic'
        "Plug 'Shougo/vimproc'
        "Plug 'Shougo/vimshell.vim'
        "Plug 'SirVer/ultisnips'
        "Plug '~/.fzf'
    call plug#end()
" }


" General {
    set nobackup                    " Without backup file
    set noswapfile                  " Without swap file
    set background=dark             " Assume a dark background
    colorscheme solarized           " Set colorscheme solarized
    filetype plugin indent on       " Automatically detect file types.
    syntax on                       " Syntax highlighting
    set mouse=a                     " Automatically enable mouse usage
    set mousehide                   " Hide the mouse cursor while typing
    set history=1000                " Store a ton of history (default is 20)
    set virtualedit=onemore         " Allow for cursor beyond last character
    "set spell                       " Spell checking on
    set encoding=utf-8              " Encoding
                                    " Fileencodings
    set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
                                    " Always switch to the current file directory
    "autocmd BufEnter * if bufname("") !~ "^\[A-Za-z0-9\]*://" | lcd %:p:h | endif
" }


" Vim UI {
    set number                      " Line numbers on
    set relativenumber              " Line relative number on
    set cursorline                  " Highlight current line
    "set cursorcolumn                " Highlight current column
    "set showmatch                   " Show matching brackets/parenthesis
    set showmode                    " Display the current mode
    set incsearch                   " Find as you type search
    set hlsearch                    " Highlight search terms
    set winminheight=0              " Windows can be 0 line high
    set ignorecase                  " Case insensitive search
    set smartcase                   " Case sensitive when uc present
    set wildmenu                    " Show list instead of just completing
    set wildmode=list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.
    set whichwrap=b,s,h,l,<,>,[,]   " Backspace and cursor keys wrap too
    set scrolljump=1                " Lines to scroll when cursor leaves screen
    set scrolloff=3                 " Minimum lines to keep above and below cursor
" }


" Formatting {
    set backspace=2                 " Make backspace work like most other apps
    set nowrap                      " Do not wrap long lines
    set autoindent                  " Indent at the same level of the previous line
    set shiftwidth=4                " Use indents of 4 spaces
    set expandtab                   " Tabs are spaces, not tabs
    set tabstop=4                   " An indentation every four columns
    set softtabstop=4               " Let backspace delete indent
    set nojoinspaces                " Prevents inserting two spaces after punctuation on a join (J)
    set splitright                  " Puts new vsplit windows to the right of the current
    set splitbelow                  " Puts new split windows to the bottom of the current
    "autocmd                         " Remove trailing whitespaces and ^M chars
    "    \ FileType c,cpp,go,python
    "    \ autocmd BufWritePre <buffer> call StripTrailingWhitespace()
" }


" Key (re)Mappings {
    let mapleader=','

    " Delete buffer
    noremap <leader>bw :bw<CR>

    " Write the whole buffer to the current file
    noremap <leader>w :w<CR>

    " Write all changed buffers and quit the current window
    noremap <leader>wq :wa<CR>:q<CR>

    " Exit Vim, unless there are some buffers which have been changed
    noremap <leader>q :qa!<CR>

    " Reload vim configure
    noremap <leader>r :source ~/.vimrc<CR>

    "
    noremap <leader>/ :LeaderfLine<CR>

    "
    "#noremap <leader>? :<C-U><C-R>=printf("Leaderf! rg --current-buffer -e %s ", expand("<cword>"))<CR><CR>

    "
    noremap <C-R> :LeaderfHistorySearch<CR>

    "
    noremap <C-T> :LeaderfFile<CR>

    "
    noremap <C-F> :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>

    " Find merge conflict markers
    noremap <leader>fc /\v^[<\|=>]{7}( .*\|$)<CR>

    " Change Working Directory to that of the current file
    cnoremap cwd lcd %:p:h
    cnoremap cd. lcd %:p:h

    " Visual shifting (does not exit Visual mode)
    vnoremap < <gv
    vnoremap > >gv

    " Allow using the repeat operator with a visual selection (!)
    vnoremap . :normal .<CR>

    " Copy and paste
    vnoremap <leader>tee :!tee /tmp/t<CR>
    vnoremap <leader>cat :!cat /tmp/t<CR>

    " ScreenShell open and quit
    noremap <leader>ss :ScreenShell<cr>
    noremap <leader>sq :ScreenQuit<cr>

    map <leader>w! :w !sudo tee %<cr>

    " Go to next buffer in buffer list
    noremap <F1> :bp<CR>

    " Go to next buffer in buffer list
    noremap <F2> :bn<CR>

    noremap <F3> :LeaderfBufTag<CR>

    " Undotree Toggle
    noremap <F4> :UndotreeToggle<CR>

    " Tagbar Toggle
    noremap <F5> :TagbarToggle<CR>

    " NERDTree Toggle (replace by ranger)
    noremap <F6> :RangerWorkingDirectory<CR>

    " Open markdown preview
    noremap <F7> :MarkdownPreview<CR>

    " Paste Mode Toggle (sane indentation on pastes)
    set pastetoggle=<F9>

    " Strip trailing whitespace
    noremap <F10> :call StripTrailingWhitespace()<CR>


    " xnoremap gf :<C-U><C-R>=printf("Leaderf! rg -F -e %s ", leaderf#Rg#visual())<CR>
    " search visually selected text literally
    " noremap go :<C-U>Leaderf! rg --recall<CR>

    " let g:Lf_ShortcutF = "<leader>ff"
    " noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
    " noremap <leader>fm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
    " noremap <leader>ft :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
    " noremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>

    " nnoremap <Leader>a :Ag<CR>



    " Search forward using very magic mode
    " nnoremap <leader>/ /\v

    " Search backward using very magic mode
    " nnoremap <leader>? ?\v

    " Map <Leader>ff to display all lines with keyword under cursor and ask which one to jump to
    " nmap <Leader>ff [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>

    " should use `Leaderf gtags --update` first
    " let g:Lf_GtagsAutoGenerate = 0
    " let g:Lf_Gtagslabel = 'native-pygments'
    " noremap <leader>fr :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
    " noremap <leader>fd :<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>
    " noremap <leader>fo :<C-U><C-R>=printf("Leaderf! gtags --recall %s", "")<CR><CR>
    " noremap <leader>fn :<C-U><C-R>=printf("Leaderf gtags --next %s", "")<CR><CR>
    " noremap <leader>fp :<C-U><C-R>=printf("Leaderf gtags --previous %s", "")<CR><CR>
" }


" Plugins {
    " colorscheme {
        let g:solarized_termtrans = 1
    " }

    " syntastic {
    "    set statusline+=%#warningmsg#
    "    set statusline+=%{SyntasticStatuslineFlag()}
    "    set statusline+=%*
    "    let g:syntastic_always_populate_loc_list = 1
    "    let g:syntastic_auto_loc_list = 1
    "    let g:syntastic_check_on_open = 1
    "    let g:syntastic_check_on_wq = 0
    " }

    " supertab {
        let g:SuperTabRetainCompletionType = 2
        let g:SuperTabDefaultCompletionType = '<C-X><C-U>'
    " }

    " YouCompleteMe {
        set completeopt-=preview
        inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
        let g:ycm_global_ycm_extra_conf = "~/.ycm_extra_conf.py"
        let g:ycm_complete_in_comments = 1
        let g:ycm_complete_in_strings = 1
        let g:ycm_enable_diagnostic_signs = 0
        let g:ycm_seed_identifiers_with_syntax= 1
        "let g:ycm_server_use_vim_stdout = 1
        "let g:ycm_server_log_level = 'debug'
    " }

    " vim-powerline {
        set laststatus=2
        set noshowmode
    " }

    " TabBar {
        let g:Tb_MaxSize = 2
        let g:Tb_TabWrap = 1
    " }

    " ultisnips {
        let g:UltiSnipsExpandTrigger = "<tab>"
        let g:UltiSnipsJumpForwardTrigger = "<tab>"
        let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
        let g:UltiSnipsSnippetDirectories = ["snippets", "bundle/ultisnips/UltiSnips"]
    " }
    "
    "

    " tagbar {
        let g:tagbar_left = 1
        let g:tagbar_width = 40
        let g:tagbar_autofocus = 1
        let g:tagbar_sort = 0
        let g:tagbar_compact = 1
        let g:indentLine_color_term = 239
        let g:indentLine_char = '|'
        let g:Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8_1/bin/ctags'

        "let g:tagbar_type_lua = {
        "    \ 'ctagstype' : 'lua',
        "    \ 'kinds' : [
        "        \ 'f:functions',
        "        \ 'v:variables',
        "    \ ],
        "\ }

        if executable('coffeetags')
            let g:tagbar_type_coffee = {
                \ 'ctagsbin' : 'coffeetags',
                \ 'ctagsargs' : '',
                \ 'kinds' : [
                \ 'f:functions',
                \ 'o:object',
                \ ],
                \ 'sro' : ".",
                \ 'kind2scope' : {
                \ 'f' : 'object',
                \ 'o' : 'object',
                \ }
            \ }
        endif

        let g:tagbar_type_markdown = {
            \ 'ctagstype' : 'markdown',
            \ 'sort' : 0,
            \ 'kinds' : [
                \ 'h:sections'
            \ ]
        \ }

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
    " }

    " nerdtree {
        let g:indentLine_char = '|'
        let NERDChristmasTree = 0
        let NERDTreeWinSize = 30
        let NERDTreeChDirMode = 2
        let NERDTreeIgnore = ['\~$', '\.pyc$', '\.swp$']
        let NERDTreeSortOrder = ['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
        let NERDTreeShowBookmarks = 1
        let NERDTreeShowHidden = 1
        let NERDTreeWinPos = "right"
    " }

    " vim-signature {
        if isdirectory(expand("~/.vim/bundle/vim-signature"))
            nnoremap [0 :call signature#marker#Goto('prev', 0, v:count)<CR>
            nnoremap ]0 :call signature#marker#Goto('next', 0, v:count)<CR>
            nnoremap [1 :call signature#marker#Goto('prev', 1, v:count)<CR>
            nnoremap ]1 :call signature#marker#Goto('next', 1, v:count)<CR>
            nnoremap [2 :call signature#marker#Goto('prev', 2, v:count)<CR>
            nnoremap ]2 :call signature#marker#Goto('next', 2, v:count)<CR>
            nnoremap [3 :call signature#marker#Goto('prev', 3, v:count)<CR>
            nnoremap ]3 :call signature#marker#Goto('next', 3, v:count)<CR>
            nnoremap [4 :call signature#marker#Goto('prev', 4, v:count)<CR>
            nnoremap ]4 :call signature#marker#Goto('next', 4, v:count)<CR>
            nnoremap [5 :call signature#marker#Goto('prev', 5, v:count)<CR>
            nnoremap ]5 :call signature#marker#Goto('next', 5, v:count)<CR>
            nnoremap [6 :call signature#marker#Goto('prev', 6, v:count)<CR>
            nnoremap ]6 :call signature#marker#Goto('next', 6, v:count)<CR>
            nnoremap [7 :call signature#marker#Goto('prev', 7, v:count)<CR>
            nnoremap ]7 :call signature#marker#Goto('next', 7, v:count)<CR>
            nnoremap [8 :call signature#marker#Goto('prev', 8, v:count)<CR>
            nnoremap ]8 :call signature#marker#Goto('next', 8, v:count)<CR>
            nnoremap [9 :call signature#marker#Goto('prev', 9, v:count)<CR>
            nnoremap ]9 :call signature#marker#Goto('next', 9, v:count)<CR>
        endif
    " }

    " vim-fugitive {
        if isdirectory(expand("~/.vim/bundle/vim-fugitive/"))
            nnoremap <silent> <leader>gst :Gstatus<CR>
            nnoremap <silent> <leader>gd  :Gdiff<CR>
            nnoremap <silent> <leader>gbl :Gblame<CR>
        endif
    "}

    " vim-gitgutter {
        set updatetime=750                " Delay
        let gitgutter_highlight_lines = 1 " To turn on line highlighting by default
    " }

    " tabular {
        if isdirectory(expand("~/.vim/bundle/tabular"))
            nnoremap <Leader>a& :Tabularize /&<CR>
            nnoremap <Leader>a= :Tabularize /^[^=]*\zs=<CR>
            nnoremap <Leader>a=> :Tabularize /=><CR>
            nnoremap <Leader>a: :Tabularize /^[^:]*\zs:<CR>
            nnoremap <Leader>a:: :Tabularize /^[^:]*:\zs<CR>
            nnoremap <Leader>a, :Tabularize /,<CR>
            nnoremap <Leader>a,, :Tabularize /,\zs<CR>
            nnoremap <Leader>a<Bar> :Tabularize /<Bar><CR>
            nnoremap <Leader>a{ :Tabularize /{<CR>
            nnoremap <Leader>a} :Tabularize /}<CR>
            vnoremap <Leader>a& :Tabularize /&<CR>
            vnoremap <Leader>a= :Tabularize /^[^=]*\zs=<CR>
            vnoremap <Leader>a=> :Tabularize /=><CR>
            nnoremap <Leader>a: :Tabularize /^[^:]*\zs:<CR>
            nnoremap <Leader>a:: :Tabularize /^[^:]*:\zs<CR>
            vnoremap <Leader>a, :Tabularize /,<CR>
            vnoremap <Leader>a,, :Tabularize /,\zs<CR>
            vnoremap <Leader>a<Bar> :Tabularize /<Bar><CR>
            vnoremap <Leader>a{ :Tabularize /{<CR>
            vnoremap <Leader>a} :Tabularize /}<CR>
        endif
    " }

    " undotree {
        if isdirectory(expand("~/.vim/bundle/undotree"))
        endif
    "}

    " screen {
    " }

    " markdown-preview {
		" set to 1, the nvim will auto close current preview window when change
		" from markdown buffer to another buffer
		" default: 1
		let g:mkdp_auto_close = 0
        let g:mkdp_markdown_css='/Users/wine93/Home/.local/lib/github-markdown-css/github-markdown.css'
    " }

    " FastFold {
        nmap zuz <Plug>(FastFoldUpdate)
        let g:fastfold_savehook = 1
        let g:fastfold_fold_command_suffixes = ['x','X','a','A','o','O','c','C']
        let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']

        let g:markdown_folding = 1
        let g:tex_fold_enabled = 1
        let g:vimsyn_folding = 'af'
        let g:xml_syntax_folding = 1
        let g:javaScript_fold = 1
        let g:sh_fold_enabled= 7
        let g:ruby_fold = 1
        let g:perl_fold = 1
        let g:perl_fold_blocks = 1
        let g:r_syntax_folding = 1
        let g:rust_fold = 1
        let g:php_folding = 1
    " }

    " vim-airline/vim-airline {
        let g:airline_section_c = '%F'
        let g:airline_powerline_fonts = 1

        let g:airline#extensions#tabline#enabled = 1
        let g:airline#extensions#tabline#left_sep = ''
        let g:airline#extensions#tabline#left_alt_sep = ''
        let g:airline#extensions#tabline#right_sep = ''
        let g:airline#extensions#tabline#right_alt_sep = ''
        let g:airline#extensions#tabline#formatter = 'unique_tail'
    " }

    " vim-airline/vim-airline-themes {
        let g:airline_theme = 'molokai'
    " }

    " junegunn/fzf.vim {
    "    command! -bang -nargs=? -complete=dir Files
    "        \ call fzf#vim#files(<q-args>, {'options': ['--layout=reverse', '--info=inline', '--preview', 'bat {}']}, <bang>0)
    " }

    " francoiscabrol/ranger.vim {
        let g:NERDTreeHijackNetrw = 0  " Add this line if you use NERDTree
        let g:ranger_replace_netrw = 1 " Open ranger when vim open a directory
        let g:ranger_command_override = '/Users/wine93/.local/app/ranger/ranger-1.9.3/ranger.py --cmd "set show_hidden=true"'
    " }

    " Yggdroot/LeaderF {
        let g:Lf_HideHelp = 1
	    let g:Lf_UseCache = 0
	    let g:Lf_UseVersionControlTool = 0
	    let g:Lf_IgnoreCurrentBufferName = 1

		" popup mode
        let g:Lf_WindowPosition = 'popup'
        let g:Lf_PreviewInPopup = 1
        let g:Lf_PopupPosition = [float2nr(&lines * 0.1), 0]
        let g:Lf_PopupWidth = &columns * 3 / 4
        let g:Lf_PopupHeight = float2nr(&lines * 0.3)
		let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "DejaVu Sans Mono for Powerline" }

        let g:Lf_PreviewCode = 1
        let g:Lf_PopupPreviewPosition = 'bottom'
        let g:Lf_PreviewPopupWidth = float2nr(&lines * 0.3)
        let g:Lf_AutoResize = 1
        let g:Lf_PreviewResult = {
            \ 'File': 1,
            \ 'Buffer': 1,
            \ 'Mru': 1,
            \ 'Tag': 1,
            \ 'BufTag': 1,
            \ 'Function': 1,
            \ 'Line': 1,
            \ 'Colorscheme': 1,
            \ 'Rg': 1,
            \ 'Gtags': 1
            \}

        " UI
        let g:Lf_ShowDevIcons = 1 " Show icons, icons are shown by default
        let g:Lf_DevIconsFont = "DroidSansMono Nerd Font Mono" " For GUI vim, the icon font can be specify like this, for example

        set ambiwidth=double " If needs
    " }
" }


" Functions {
    " Strip whitespace {
        function! StripTrailingWhitespace()
            " Preparation: save last search, and cursor position.
            let _s=@/
            let l = line(".")
            let c = col(".")
            " do the business:
            %s/\s\+$//e
            " clean up: restore previous search history, and cursor position
            let @/=_s
            call cursor(l, c)
        endfunction
    " }
" }
