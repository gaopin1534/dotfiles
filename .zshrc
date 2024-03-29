eval "$(direnv hook zsh)"
autoload -Uz vcs_info
autoload -Uz add-zsh-hook
#環境変数
export LANG=ja_JP.UTF-8
export GOPATH=$HOME
export PATH=$PATH:$GOPATH/bin
export EDITOR="vim"
export LC_ALL=ja_JP.UTF-8
export JAVA_HOME=`/usr/libexec/java_home`
export PATH=$PATH:"/opt/local/bin:/opt/local/sbin"
export PATH=$PATH:"$HOME/src/flutter/bin"
export PATH=$JAVA_HOME:$PATH
setopt no_global_rcs
export PATH=$PATH:"$HOME/Library/Android/sdk/platform-tools"

# hyper
precmd() {
   pwd=$(pwd)
   cwd=${pwd##*/}
   print -Pn "\e]0;$cwd\a"
}

preexec() {
   printf "\033]0;%s\a" "${1%% *} | $cwd"
}

# anyenv
if [ -d $HOME/.anyenv ] ; then
   export PATH="$HOME/.anyenv/bin:$PATH"
   eval "$(anyenv init -)"
   for D in `ls $HOME/.anyenv/envs`
   do
      export PATH="$HOME/.anyenv/envs/$D/shims:$PATH"
   done
fi
# 色を使用出来るようにする
autoload -Uz colors
colors

# emacs 風キーバインドにする
bindkey -e

# ヒストリの設定
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
# プロンプト
FACE_CHAR=("(*´ω｀*)" "(･∀･)ﾉ" "( ﾟД ﾟ )" "(｡╹ω ╹｡)" "(´・ω ・｀)" "٩(\`･ω ･´)و" "(๑˃̵ᴗ˂̵)و" "( ･⊝ ･ )" "(p*･ω ･)p")
function _update_prompt_with_cute_faces() {
  PROMPT="%{$fg[yellow]%}%~
%{$fg[cyan]%}$FACE_CHAR[$[$RANDOM % ${#FACE_CHAR[@]} + 1]] ${reset_color}%(!.#.$)"
}
add-zsh-hook precmd _update_prompt_with_cute_faces

#右プロンプトに入力がきたら消す
setopt TRANSIENT_RPROMPT

# 単語の区切り文字を指定する
autoload -Uz select-word-style
select-word-style default
# ここで指定した文字は単語区切りとみなされる
# / も区切りと扱うので、^W でディレクトリ１つ分を削除できる
zstyle ':zle:*' word-chars " /=;@:{},|"
zstyle ':zle:*' word-style unspecified

########################################
# 補完
# 補完機能を有効にする
#for zsh-completions
fpath=(/usr/local/share/zsh-completions $fpath)
autoload -Uz compinit
compinit -u

# 補完をカーソルで選択可能に
zstyle ':completion:*:default' menu select=2

# 補完で小文字でも大文字にマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# ../ の後は今いるディレクトリを補完しない
zstyle ':completion:*' ignore-parents parent pwd ..

# sudo の後ろでコマンド名を補完する
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
                   /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin

# ps コマンドのプロセス名補完
zstyle ':completion:*:processes' command 'ps x -o pid,s,args'


########################################
# vcs_info

zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats '%F{green}[%s] %c%u%b%f'
zstyle ':vcs_info:*' actionformats '%F{red}[%s]%c%u%b|%a%f'

function _update_vcs_info_msg() {
    LANG=en_US.UTF-8 vcs_info
    RPROMPT="${vcs_info_msg_0_}"
}
add-zsh-hook precmd _update_vcs_info_msg


########################################
# オプション
# 日本語ファイル名を表示可能にする
setopt print_eight_bit

# beep を無効にする
setopt no_beep

# フローコントロールを無効にする
setopt no_flow_control

# Ctrl+Dでzshを終了しない
setopt ignore_eof

# '#' 以降をコメントとして扱う
setopt interactive_comments

# ディレクトリ名だけでcdする
setopt auto_cd

# cd したら自動的にpushdする
setopt auto_pushd
# 重複したディレクトリを追加しない
setopt pushd_ignore_dups

# 同時に起動したzshの間でヒストリを共有する
setopt share_history

# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups

# スペースから始まるコマンド行はヒストリに残さない
setopt hist_ignore_space

# ヒストリに保存するときに余分なスペースを削除する
setopt hist_reduce_blanks

# 高機能なワイルドカード展開を使用する
setopt extended_glob

# lsの色設定
export LSCOLORS=cxfxcxdxbxegedabagacad

# homebrewで重複パスを登録しない
typeset -U path cdpath fpath manpath

########################################
# キーバインド

# ^R で履歴検索をするときに * でワイルドカードを使用出来るようにする
bindkey '^R' history-incremental-pattern-search-backward

########################################
# エイリアス
alias g='git'
alias gl='git log --oneline'
alias gg='git log --graph --oneline --decorate=full'
alias showdots='defaults write com.apple.finder AppleShowAllFiles TRUE;killall Finder'
alias hidedots='defaults write com.apple.finder AppleShowAllFiles FALSE;killall Finder'
alias la='ls -a'
alias ll='ls -l'

alias be='bundle exec'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias mkdir='mkdir -p'

alias cdsrc='cd ~/src'

alias phpinstall='PHP_BUILD_CONFIGURE_OPTS="--with-openssl=$(brew --prefix openssl) --with-libxml-dir=$(brew --prefix libxml2)" PHP_BUILD_EXTRA_MAKE_ARGUMENTS=-j4 phpenv install'
# javaの文字コード対策
alias javac='javac -J-Dfile.encodeing=UTF-8'
alias java='java -Dfile.encoding=UTF-8'

# sudo の後のコマンドでエイリアスを有効にする
alias sudo='sudo '

# グローバルエイリアス
alias -g L='| less'
alias -g G='| grep'

alias bi='bundle install --path=.bundle --binstubs=bundle_bin'

# pecoの設定
function peco-history-selection(){
    BUFFER=`history -n 1 | tail -r  | awk '!a[$0]++' | peco`
    CURSOR=$#BUFFER
    zle reset-prompt
}
zle -N peco-history-selection
bindkey '^R' peco-history-selection

# C で標準出力をクリップボードにコピーする
# mollifier delta blog : http://mollifier.hatenablog.com/entry/20100317/p1
if which pbcopy >/dev/null 2>&1 ; then
    # Mac
    alias -g C='| pbcopy'
elif which xsel >/dev/null 2>&1 ; then
    # Linux
    alias -g C='| xsel --input --clipboard'
elif which putclip >/dev/null 2>&1 ; then
    # Cygwin
    alias -g C='| putclip'
fi

########################################
# OS 別の設定
case ${OSTYPE} in
    darwin*)
        #Mac用の設定
        export CLICOLOR=1
        alias ls='ls -G -F'
        ;;
    linux*)
        #Linux用の設定
        alias ls='ls -F --color=auto'
        ;;
esac

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
