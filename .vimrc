 set background=dark
syntax on
set smartindent
set autoindent
set mouse=a 
set number

if !has('gui_running') && &term =~ '^\%(screen\|tmux\)'
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

syntax on
command! -nargs=0 Prettier :CocCommand prettier.formatFile
set noshowmode
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set background=dark
set t_Co=256
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum""]"
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

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
call plug#end()
source $HOME/.vim/coc.vim

map / :Commentary<CR>
map <C-x> :FZF<CR>
map w :write<CR>
map q :quit<CR>
map <C-z> :NERDTreeToggle<CR>
map <C-r> :! zsh<CR>

set termguicolors
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
set laststatus=2

let g:airline_theme='codedark'
let g:airline#extensions#tabline#enabled = 1

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
	  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',}
