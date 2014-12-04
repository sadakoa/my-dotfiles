# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# web検索用 ================================================
# url: $1, delimiter: $2, prefix: $3, words: $4..
function web_search {
  local url=$1       && shift
  local delimiter=$1 && shift
  local prefix=$1    && shift
  local query

  while [ -n "$1" ]; do
    if [ -n "$query" ]; then
      query="${query}${delimiter}${prefix}$1"
    else
      query="${prefix}$1"
    fi
    shift
  done

  open "${url}${query}"
}

function qiita () {
  web_search "http://qiita.com/search?utf8=✓&q=" "+" "" $*
}

function google () {
  web_search "https://www.google.co.jp/search?&q=" "+" "" $*
}
# web検索用 ================================================

# 顔文字設定
autoload -Uz colors; colors
PROMPT="%(?.%{$bg[green]%}.%{$bg[blue]%})%(?!(._.)/!(;_;%)?) %B%~$%b%{${reset_color}%} "
PROMPT2="%{$bg[blue]%}%_>%{$reset_color%}%b "
setopt correct
SPROMPT="%{$bg[red]%}%{$suggest%}(._.%)? %B %r is correct? [n,y,a,e]:%{${reset_color}%}%b "

# 色設定
autoload -U colors; colors

# もしかして機能
setopt correct

# PCRE 互換の正規表現
setopt re_match_pcre

# プロンプトが表示される度にプロンプト文字列を評価、置換する
setopt prompt_subst

# プロンプト指定
PROMPT="
[%n] %{${fg[yellow]}%}%~%{${reset_color}%}
%(?.%{$fg[green]%}.%{$fg[blue]%})%(?!(*'-') <!(*;-;%)? <)%{${reset_color}%} "

# プロンプト指定(コマンドの続き)
PROMPT2='[%n]> '

# もしかして時のプロンプト指定
SPROMPT="%{$fg[red]%}%{$suggest%} ( ∩ˇˇ) < はわわ！ご主人様！もしや %B%r%b %{$fg[red]%}ではないでしょうか？ [せやな!(y), ちゃうわ(n),a,e]:${reset_color} "

ZSH_THEME="wedisagree"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="wedisagree"

# タブで補完展開
setopt AUTO_MENU
setopt AUTO_CD

#曖昧な補完で、自動的に選択肢をリストアップ
setopt AUTO_LIST

#変数名を補完する
setopt AUTO_PARAM_KEYS

#行の末尾がバッククォートでも無視する
setopt SUN_KEYBOARD_HACK

#コマンドのスペルの訂正を使用する
setopt CORRECT

#補完候補を詰めて表示
setopt LIST_PACKED

#=以降でも補完できるようにする
setopt MAGIC_EQUAL_SUBST

#ヒストリに時刻情報もつける
setopt EXTENDED_HISTORY

#履歴をインクリメンタルに追加
setopt INC_APPEND_HISTORY

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/Users/sadakoa/.rbenv/shims:/Users/sadakoa/.rbenv/bin:/usr/local/heroku/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/sadakoa/node_modules/.bin"
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
