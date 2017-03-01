" shockyeah's vimrc

" ------------------------------------------------
" dein.vim
" https://github.com/Shougo/dein.vim
" ------------------------------------------------
if &compatible
  set nocompatible
endif
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

" plugins
call dein#begin(expand('~/.vim/dein'))

call dein#add('Shougo/dein.vim')
call dein#add('Shougo/vimproc.vim', {'build': 'make'})
" スニペット、定義ファイル 順:c+n 逆:c+p
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets') 
" 入力補完
call dein#add('Shougo/neocomplete.vim')
" 便利なファイルオープン
call dein#add('Shougo/unite.vim')  
" 最近使ったファイル表示
call dein#add('Shougo/neomru.vim')
" vim上で実行できるシェル
call dein#add('Shougo/vimshell')
" フォルダ移動
call dein#add('scrooloose/nerdtree')
" colorsheme hybrid
call dein#add('w0ng/vim-hybrid')

" end
call dein#end()

" ------------------------------------------------
" key map
" ------------------------------------------------
" 'Shougo/unite.vim' バッファ一覧
noremap <C-P> :Unite buffer<CR>
" 'Shougo/unite.vim' ファイル一覧
noremap <C-N> :Unite -buffer-name=file file<CR>
" 'Shougo/neomru.vim' 最近使ったファイル一覧
noremap <C-Z> :Unite file_mru<CR>
" 'scrooloose/nerdtree' フォルダ移動
noremap <silent><C-e> :NERDTreeToggle<CR>

" ------------------------------------------------
" Standard
" ------------------------------------------------
" 文字コードをUFT-8に設定
set fenc=utf-8
" 改行コード
set fileformats=unix,dos
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd
" helpの言語の優先順位
set helplang=ja,en
" 改行時の自動コメントアウト無効
autocmd FileType * setlocal formatoptions-=r
autocmd FileType * setlocal formatoptions-=o

" ------------------------------------------------
" Views
" ------------------------------------------------
" color scheme
set background=dark
colorscheme hybrid
syntax on
" アンチエイリアス(フォントを滑らかに)
set antialias
" 行番号を表示
set number
" 現在の行を強調表示
set cursorline
" 現在の行を強調表示(縦)
"set cursorcolumn
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" インデントはスマートインデント
set smartindent
" ビープ音を可視化
set visualbell
" 括弧入力時の対応する括弧を表示
set showmatch
" ステータスラインを常に表示
set laststatus=2
" コマンドラインの補完
set wildmode=list:longest
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk
" 不可視文字を可視化(タブが「▸-」と表示される)
set list listchars=tab:\▸\-
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=2
" 行頭でのTab文字の表示幅
set shiftwidth=2

" ------------------------------------------------
" Search
" ------------------------------------------------
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索を循環させない
set nowrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" ------------------------------------------------
" neocomplcache設定 PHP補完用辞書ファイル
" ------------------------------------------------
" 辞書ファイル
"autocmd BufRead *.php\|*.ctp\|*.tpl :set dictionary=~/.vim/dictionary/php.dict filetype=php
"let g:neocomplcache_enable_at_startup = 1
"let g:neocomplcache_enable_camel_case_completion = 1
"let g:neocomplcache_enable_underbar_completion = 1
"let g:neocomplcache_smart_case = 1
"let g:neocomplcache_min_syntax_length = 3
"let g:neocomplcache_manual_completion_start_length = 0
"let g:neocomplcache_caching_percent_in_statusline = 1
"let g:neocomplcache_enable_skip_completion = 1
"let g:neocomplcache_skip_input_time = '0.5'

" ------------------------------------------------
"
" ------------------------------------------------
