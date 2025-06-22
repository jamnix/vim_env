# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

export TERM=xterm-256color
test -s ~/bin/bladefunctions && . ~/bin/bladefunctions || true
export PS1="\u@\h:\w>" 
alias ll='ls -l --color=auto'
alias ls='ls --color=auto'
alias vi='vim'
export PATH="/home/harleyhuang/bin/bin:$PATH:$HOME/.ft:/home/harleyhuang/Python/bin"
export genfiles="--download-genfiles --compile-command-query='--merge'" 
export opt="--gcc-version=gcc7  --os-name=tlinux2 --use-branch=mm3rd2/gperftools:origin/gperftools-2.0-no-tcmalloc  --skip-ipath --env-name=weixin"
export clang_opt="--env-name=weixin_clang --clang --use-branch=mm3rd2/gperftools:origin/gperftools-2.0-no-tcmalloc"
export docker_opt="--svn-update --no-patch"
export personal="--personal-host"
#export VIMRUNTIME="$HOME/bin/share/vim/vim90"

source /home/harleyhuang/z/z.sh 

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
#export FZF_DEFAULT_OPTS='--height 80% --layout=reverse --border --no-sort'
export FZF_DEFAULT_OPTS="--exact --height 70% --no-sort --layout=reverse --border --color --ansi --preview '(highlight -O ansi {} || cat {}) 2> /dev/null | head -500'"
export FZF_DEFAULT_COMMAND='rg --files --hidden'
#export FZF_DEFAULT_COMMAND="find --exclude={.git,.idea,.vscode,.sass-cache,.ccls-cache,bazel-out} --type f"

export toutf8="perl -pe 's/\\\\([0-7]{3})/chr(oct(\$1))/ge'"
export tored="perl -pe 's/(qza)/\e[1;31m$1\e[0m/g'"
# 记得source ~/.bashrc
export LANG=zh_CN.UTF8
. ~/.profile_comm

ff() {
  IFS=$'\n' files=($(fzf --query="$1" --multi --select-1 --exit-0 --preview-window=right:70%:wrap --preview="bat --color=always {}"))
  [[ -n "$files" ]] && ${EDITOR:-vim} "${files[@]}"
}

#fl() {
#  if [ ! "$#" -gt 0 ]; then echo "Need a string to search for\!"; return 1; fi
#  rg --files-with-matches --no-messages "$1" | fzf --preview "highlight -O ansi -l {} 2> /dev/null | rg --colors 'match:bg:yellow' --ignore-case --pretty --context 10 '$1' || rg --ignore-case --pretty --context 10 '$1' {}"
#}

fl() {
  if [ "$#" -eq 0 ]; then
    echo "Usage: fl <search_term>" >&2
    return 1
  fi

  # 占用了 ctrl-u 所以不能用ctrl-u清理输入
  rg --files-with-matches --no-messages --smart-case "$1" | \
  fzf --preview "bat --style=numbers --color=always {} | rg --colors 'match:bg:yellow' --ignore-case --pretty --context 10 '$1' || cat {}" \
      --preview-window=right:70%:wrap \
      --bind 'ctrl-u:preview-page-up,ctrl-d:preview-page-down' \
      --bind 'enter:execute(vim {} > /dev/tty)'
}

fk() {
  if [ "$#" -eq 0 ]; then
    echo "Usage: fk <search_term>" >&2
    return 1
  fi

  # 占用了 ctrl-u 所以不能用ctrl-u清理输入
  rg --files-with-matches --no-messages --smart-case -w "$1" | \
  fzf --preview "rg --colors 'match:bg:yellow' --ignore-case --pretty --context 10 -w '$1' {} || bat --style=numbers --color=always {}" \
      --preview-window=right:70%:wrap \
      --bind 'ctrl-u:preview-page-up,ctrl-d:preview-page-down' \
      --bind 'enter:execute(vim {} > /dev/tty)'
}
