"curl -fLo ~/.vim/autoload/plug.vim --create-dirs \    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"
"syntax error
"mkdir -p ~/.vim/pack/git-plugins/start git clone --depth 1 https://github.com/dense-analysis/ale.git ~/.vim/pack/git-plugins/start/ale

call plug#begin('~/.vim/plugged')



    " A Vim Plugin for Lively Previewing LaTeX PDF Output
    ""Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

    " Atom One Dark / Light theme.
    Plug 'rakr/vim-one'

    Plug 'gruvbox-community/gruvbox'
   
    Plug 'maxboisvert/vim-simple-complete'

    "Syntax error"
    Plug 'dense-analysis/ale'

    " Add spelling errors to the quickfix list (vim-ingo-library is a dependency).
    Plug 'inkarkat/vim-ingo-library' | Plug 'inkarkat/vim-SpellCheck'

    " Automatically show Vim's complete menu while typing.
    Plug 'vim-scripts/AutoComplPop'

    "Show line indentLine" https://github.com/Yggdroot/indentLine
    Plug 'Yggdroot/indentLine'

    "nerdtree" https://github.com/preservim/nerdtree
    Plug 'preservim/nerdtree'

    "Vim plugin for metrics, insights, and time tracking automatically generated from your programming activity."
    Plug 'wakatime/vim-wakatime'   
   
    " post install (yarn install | npm install) then load plugin only for editing supported files
    Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }


    "Vim pdf plugin
    Plug 'makerj/vim-pdf'


    Plug 'webastien/vim-ctags'
    "Icons
    "ALWAYS LOAD AS LAST
    Plug 'ryanoasis/vim-devicons'

call plug#end()

" -----------------------------------------------------------------------------
" Color settings
" -----------------------------------------------------------------------------

" Enable 24-bit true colors if your terminal supports it.
if (has("termguicolors"))
  " https://github.com/vim/vim/issues/993#issuecomment-255651605
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

  set termguicolors
endif

" Enable syntax highlighting.
syntax on

" Set the color scheme.
hi clear SpellBad
set background=dark
colorscheme gruvbox
hi SpellBad cterm=underline



highlight Normal guibg=black guifg=white 


" Only underline the highlights instead of using custom colors.
highlight QuickScopePrimary gui=underline cterm=underline
highlight QuickScopeSecondary gui=underline cterm=underline


" Spelling mistakes will also be colored red if you uncomment the colors.
hi SpellBad cterm=underline "ctermfg=203 guifg=#ff5f5f
hi SpellLocal cterm=underline "ctermfg=203 guifg=#ff5f5f
hi SpellRare cterm=underline "ctermfg=203 guifg=#ff5f5f
hi SpellCap cterm=underline "ctermfg=203 guifg=#ff5f5f


hi SpellBad cterm=underline ctermfg=0 guibg=#000000
hi SpellLocal cterm=underline ctermfg=0 guibg=#000000
hi SpellRare cterm=underline ctermfg=0 guibg=#000000
hi SpellCap cterm=underline


"use :hi to get all color"
"guibg=#000000 will turn the highlighting black, to fit background 



" Auto complete brackets 
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O inoremap {;<CR> {<CR>};<ESC>O


""Mapping to move lines"
"nnoremap <A-j> :m .+1<CR>==
"nnoremap <A-k> :m .-2<CR>==
"inoremap <A-j> <Esc>:m .+1<CR>==gi
"inoremap <A-k> <Esc>:m .-2<CR>==gi
"vnoremap <A-j> :m '>+1<CR>gv=gv
"vnoremap <A-k> :m '<-2<CR>gv=gv


" Move 1 more lines up or down in normal and visual selection modes.
nnoremap K :m .-2<CR>==
nnoremap J :m .+1<CR>==
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv


set complete+=kspell
set spelllang=en_us

"will not show number of results of predicted words on status bar"
set shortmess+=c

set tabstop=4 softtabstop =4
set shiftwidth=4
set expandtab
set smartindent
set relativenumber
set nu
set hidden
set nowrap
set incsearch
set scrolloff=8
set signcolumn=yes
set colorcolumn=80
set spell
set clipboard=unnamedplus

"Ignore .class in tab complete
set wildignore=*.class,*.rbc

"for devicons
set encoding=UTF-8


" Auto-resize splits when Vim gets resized.
autocmd VimResized * wincmd =


"allows arrow keys to go to next line if cur line ends"
set whichwrap+=<,>,[,]


"all new windows open below"
set splitbelow

"sets the initial size for term"
set termwinsize=10x0

"Auto load term on vim open"
""autocmd VimEnter * term


"nerdtree"
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p


"" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

let g:NERDTreeShowHidden=1
let g:NERDTreeAutoDeleteBuffer=1
let g:NERDTreeQuitOnOpen=0


"Will refresh NERDTree outside of its window
nmap <Leader>r :NERDTreeFocus<cr>R<c-w><c-p>
nmap <F6> :NERDTreeToggle<CR>
















