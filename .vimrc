set nocompatible
filetype plugin indent on
syntax enable
set background=dark
let g:solarized_termcolors=256

"---------------NeoBundle--------------"

" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'

" ADD PLUGIN(> ~ <) --------------------------

" NERDTreeを設定
NeoBundle 'scrooloose/nerdtree'

" 自動的に閉じカッコを挿入してくれる
NeoBundle 'Townk/vim-autoclose'

" HTMLとCSSのEmmet
NeoBundle 'mattn/emmet-vim'

" マルチカーソル / :MultipleCursorsFind @@ って打つ
NeoBundle 'terryma/vim-multiple-cursors'

" Syntaxチェック
NeoBundle 'scrooloose/syntastic'





" ADD PLUGIN ---------------------------------

call neobundle#end()

" Required:
filetype plugin indent on

NeoBundleCheck

"---------------NeoBundle------------------"
" vimを立ち上げたときに、自動的にvim-indent-guidesをオンにする
let g:indent_guides_enable_on_vim_startup = 1

" NERDTreeのショートカット
nnoremap <silent><C-z> :NERDTreeToggle<CR>

"-----------基本設定------------"

"タイトルをバッファ名に変更しない
set notitle
set shortmess+=I

"ターミナル接続を高速にする
set ttyfast

"複数ファイルの編集を可能にする
set hidden

"内容が変更されたら自動的に再読み込み
set autoread

"swapを作るまでの時間m秒
set updatetime=0

"Unicodeで行末が変になる問題を解決
set ambiwidth=double

"コマンドラインでTABで補完できるようにする
set wildchar=<C-Z>

"コマンド、検索パターンを50まで保存
set history=50

syntax on "シンタックスハイライトを有効にする
set nobackup "バックアップファイルを作らない設定にする
set encoding=utf-8 "デフォルトの文字コード

set autoindent "オートインデントする
set number "行番号を表示する
set incsearch "インクリメンタルサーチ
set ignorecase "検索時に大文字小文字を無視する
set showmatch "対応する括弧のハイライト表示する
set showmode "モード表示する
set title "編集中のファイル名を表示する
set ruler "ルーラーの表示する
set tabstop=2  "タブ文字数を4にする
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
match ZenkakuSpace /　/" 全角スペースの表示

""""""""""""""""""""""""""""""
" 自動的に閉じ括弧を入力
""""""""""""""""""""""""""""""
imap { {}<LEFT>
imap [ []<LEFT>
imap ( ()<LEFT>
""""""""""""""""""""""""""""""

" カーソルが何行目の何列目に置かれているかを表示する
set ruler
" コマンドラインに使われる画面上の行数
set cmdheight=2
" エディタウィンドウの末尾から2行目にステータスラインを常時表示させる
set laststatus=2

" 検索結果をハイライト表示する
set hlsearch

" 暗い背景色に合わせた配色にする
set background=dark

" 検索ワードの最初の文字を入力した時点で検索を開始する
set incsearch

" 対応する括弧やブレースを表示する
set showmatch

" 改行時に前の行のインデントを継続する
set autoindent

" 改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set smartindent

" Vimが挿入するインデントの幅
set shiftwidth=2

" 行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする
set smarttab

" 構文毎に文字色を変化させる
syntax on

" 行番号の色
highlight LineNr ctermfg=darkyellow

autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css  set omnifunc=csscomplete#CompleteCSS
autocmd FileType javascript set tabstop=2
autocmd FileType javascript set shiftwidth=2
autocmd FileType javascript set softtabstop=2

set smartcase
set noswapfile
set incsearch
set number
set clipboard=unnamed


