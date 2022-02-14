 function Terminal()
	let terminal = bufname('bash')
	if terminal == ''
		:below terminal ++rows=10
	else
		let bufnir = bufnr(terminal)
		exec ':bwipe! ' bufnir
	endif
	endfunction

if has("nvim-0.5.0") || has("patch-8.1.1564")
	set signcolumn=number
else
	set signcolumn=yes
endif
autocmd TerminalOpen * if &buftype == "terminal" | setlocal nobuflisted | endif
syntax on
set shortmess+=c
set cmdheight=2
set background=dark
set t_Co=256
set noshowmode
set encoding=utf-8
set background=dark
syntax on
set smartindent
set autoindent
set mouse=a 
set number
set cursorline
set laststatus=2
set termguicolors
set nobackup
set nowritebackup
set updatetime=300
set timeoutlen=400
set hidden
if !has('gui_running') && &term =~ '^\%(screen\|tmux\)'
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

command! -nargs=0 Prettier :CocCommand prettier.formatFile
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum""]"
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

"----------------PLUGINS----------------"
call plug#begin('~/.vim/autoload/plugged')
  Plug 'sheerun/vim-polyglot'
	Plug 'scrooloose/NERDTree'
	Plug 'jiangmiao/auto-pairs'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'mhinz/vim-startify'
	Plug 'tpope/vim-commentary'
	Plug 'kien/ctrlp.vim'
	Plug 'ryanoasis/vim-devicons'
	Plug 'alvan/vim-closetag'
	Plug 'tpope/vim-fugitive'
	Plug 'wakatime/vim-wakatime'
	Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
	Plug 'Yggdroot/indentLine'
	Plug 'SirVer/ultisnips'
	Plug 'tomasiser/vim-code-dark'
	Plug 'roxma/vim-tmux-clipboard'
	Plug 'christoomey/vim-tmux-navigator'
call plug#end()

nmap <C-r> :call Terminal()<CR>
map / :Commentary<CR>
map w :write<CR>
map q :quit<CR>
nmap <C-z> :NERDTreeToggle<CR>
nmap <silent> <C-x> :FZF<CR>
nmap s :source%<CR>
nmap t :TmuxNavigateLeft<CR>
nmap i :TmuxNavigateDown<CR>

let g:codedark_italics = 1
let g:codedark_term256=1
colorscheme  codedark

let g:airline_powerline_fonts = 1
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.js*,*.tsx,*.ts'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.js*,*.tsx,*.ts'
let g:closetag_filetypes = 'html,xhtml,phtml,jsx,js,tsx,ts'
let g:closetag_xhtml_filetypes = 'xhtml,jsx,js,tsx,ts'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'

let g:airline_theme='codedark'
let g:airline#extensions#tabline#enabled = 1

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
	  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
		\ 'file': '\v\.(exe|so|dll)$',}
