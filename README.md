svndiff的使用方法：
1. 把svndiff文件放在bin路径下
2. 在~目录下的.subversion/config文件里配置以下内容:
    diff-cmd=/data/home/harleyhuang/bin/svndiff 


gitdiff的使用方法
在.gitconfig里添加如下配置
[diff]
external = gitdiff
[pager]
diff =


plug.vim 插件
PlugInstall 安装插件


软连接：
/home/harleyhuang/.vim/coc-settings.json -> ../vim_env/coc-settings.json.ccls   // 由于clang太卡了所以切会到ccls了
/home/harleyhuang/.vimrc -> vim_env/vimrc_ccls
/home/harleyhuang/.bashrc -> vim_env/bashrc
/home/harleyhuang/.gitignore_global -> vim_env/gitignore_global
/home/harleyhuang/.gitconfig -> vim_env/gitconfig
/home/harleyhuang/.clang-format -> vim_env/clang-format
/home/harleyhuang/.tmux.conf -> vim_env/tmux.conf
/home/harleyhuang/.tmux.conf.local -> vim_env/tmux.conf.local

bash_profile 部分配置是mac使用

coc-nvim注意:
1. 用CocList extensions查询已经安装的coc插件
2. 需要的coc插件为:
coc-diagnostic 
coc-clangd
