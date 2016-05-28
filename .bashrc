export GOPATH=$HOME
export PATH=$PATH:$GOPATH/bin
eval "$(rbenv init -)"
eval "$(pyenv init -)"
export EDITOR="vim"

# ctrl+s で出力がロックされてしまうのを防ぐ
stty stop undef

# よく使うエイリアスやら各コマンドのデフォルトのオプションを設定
alias ls='ls -CF'
alias ll='ls -AlFh --show-control-chars --color=auto'
alias la='ls -CFal'
alias mv='mv -i'
alias rm='rm -i'
alias cp='cp -i'
alias sc='screen'
alias ps='ps --sort=start_time'

# プロンプトの表示をカスタマイズ
export PS1='\[\033[01;32m\]\u@\H\[\033[01;34m\] \w \[\033[00m\]$\[\033[00m\]'
