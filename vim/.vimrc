set nocompatible
set number
set relativenumber
set mouse=a
set inccommand=split
set expandtab
set cc=80
set clipboard=unnamedplus
"set spell
set noshowmode
set noerrorbells
set smartcase
set smartindent
set encoding=UTF-8
set tabstop=2
set shiftwidth=2
set expandtab
set hlsearch

set splitright
set splitbelow

function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction


set statusline=
set statusline+=%#PmenuSel#
set statusline+=%{StatuslineGit()}
set statusline+=%#LineNr#
set statusline+=\ %f
set statusline+=%m\
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\ [%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c



"Hotkeys

nnoremap <space>; A;<esc>
nnoremap <space>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <space>eb :vsplit ~/.config/vim/.vimrc<CR>

nnoremap <C-s> :w<CR>
nnoremap <C-q> :q<CR>

nmap <C-l> :vnew<CR>

"Tab"

nnoremap <silent> <A-Left> :wincmd h<CR>
nnoremap <silent> <A-Right> :wincmd l<CR>

"Telescope 

nnoremap <C-f> <cmd>Telescope find_files<cr>
nnoremap <C-g> <cmd>Telescope file_browser<cr>

"Prettier
nnoremap <space>p :Prettier<CR>
