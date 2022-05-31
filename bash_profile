# Sample .bashrc for SuSE Linux
# Copyright (c) SuSE GmbH Nuernberg

# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.
#
# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.

# Some applications read the EDITOR variable to determine your favourite text
# editor. So uncomment the line below and enter the editor of your choice :-)
#export EDITOR=/usr/bin/vim
#export EDITOR=/usr/bin/mcedit

# For some news readers it makes sense to specify the NEWSSERVER variable here
#export NEWSSERVER=your.news.server

# If you want to use a Palm device with Linux, uncomment the two lines below.
# For some (older) Palm Pilots, you might need to set a lower baud rate
# e.g. 57600 or 38400; lowest is 9600 (very slow!)
#
#export PILOTPORT=/dev/pilot
#export PILOTRATE=115200

if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi


export GOROOT=/data/home/harleyhuang/go
export GOPATH=/data/home/harleyhuang/tencent_project/going_proj:/data/home/harleyhuang/tencent_project/kg_go_project
export GOINGPATH=/data/home/harleyhuang/tencent_project/going_proj
export GOBIN=/data/home/harleyhuang/tencent_project/going_proj/bin
export PATH=/data/home/harleyhuang/vim_env:/data/home/harleyhuang/tencent_project/going_proj/bin:/data/home/harleyhuang/go/bin:/data/home/harleyhuang/tencent_project/going_proj/tools/FlameGraph:$PATH
alias auto_go='/data/home/harleyhuang/tencent_project/going_proj/tools/attr/attr_go.py'

#alias vi="/data/home/harleyhuang/bin/bin/vim"
# 文件路径
CLICOLOR=1
LSCOLORS=gxfxcxdxegedabagacad

# 以下是mac 里的bash_profile配置
# mac需要命名为bash_profile才行 命名为bashrc不能生效
export PS1="\u@\h:\w>"
export TERM=xterm-256color
alias ll='ls -l --color'
alias ls='ls --color'
alias grep='grep --color'
export PATH=/opt/homebrew/bin:$PATH
