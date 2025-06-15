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
export VIMRUNTIME="$HOME/bin/share/vim/vim90"

source /home/harleyhuang/z/z.sh 

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
#export FZF_DEFAULT_OPTS='--height 80% --layout=reverse --border --no-sort'
export FZF_DEFAULT_OPTS="--height 70% --no-sort --layout=reverse --border --color --ansi --preview '(highlight -O ansi {} || cat {}) 2> /dev/null | head -500'"
export FZF_DEFAULT_COMMAND='rg --files --hidden'
#export FZF_DEFAULT_COMMAND="find --exclude={.git,.idea,.vscode,.sass-cache,.ccls-cache,bazel-out} --type f"

export toutf8="perl -pe 's/\\\\([0-7]{3})/chr(oct(\$1))/ge'"
export tored="perl -pe 's/(qza)/\e[1;31m$1\e[0m/g'"
# 记得source ~/.bashrc
export LANG=zh_CN.UTF8
