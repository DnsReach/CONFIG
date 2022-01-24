source $HOME/.vim/coc.vim
source $HOME/.vim/plugins.vim

syntax on
set smartindent
set autoindent
set background=dark
set termguicolors
set t_Co=256
set mouse=a 
set number
command! -nargs=0 Prettier :CocCommand prettier.formatFile
set noshowmode

call plug#begin('~/.vim/autoload/plugged')
  Plug 'sheerun/vim-polyglot'
	Plug 'scrooloose/NERDTree'
	Plug 'jiangmiao/auto-pairs'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'mhinz/vim-startify'
	Plug 'morhetz/gruvbox'
	Plug 'tpope/vim-commentary'
	Plug 'kien/ctrlp.vim'
	Plug 'ryanoasis/vim-devicons'
	Plug 'alvan/vim-closetag'
	Plug 'tpope/vim-fugitive'
	Plug 'wakatime/vim-wakatime'
	Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
	Plug 'Yggdroot/indentLine'
call plug#end()

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum""]"
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
map / :Commentary<CR>
map <C-x> :FZF<CR>
map w :write<CR>
map q :quit<CR>
map <C-z> :NERDTreeToggle<CR>
map <C-r> :! zsh<CR>
colo gruvbox

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

let g:airline#extensions#tabline#enabled = 1
set laststatus=2
let g:airline_statusline_ontop=0
let g:airline_theme='transparent'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
	  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',}

