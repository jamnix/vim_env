export TERM=xterm-256color
test -s ~/bin/bladefunctions && . ~/bin/bladefunctions || true
export PS1="\u@\h:\w>" 
export PATH="/home/harleyhuang/bin/bin:$PATH:$HOME/.ft:/home/harleyhuang/Python/bin"
export genfiles="--download-genfiles --compile-command-query='--merge'" 
export opt="--gcc-version=gcc7  --os-name=tlinux2 --use-branch=mm3rd2/gperftools:origin/gperftools-2.0-no-tcmalloc  --skip-ipath"
export personal="--personal-host"
export VIMRUNTIME="$HOME/bin/share/vim/vim90"

source /home/harleyhuang/z/z.sh 

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
