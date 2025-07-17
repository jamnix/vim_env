svndiff的使用方法：
1. 把svndiff文件放在bin路径下
2. 在~目录下的.subversion/config文件里配置以下内容:
    diff-cmd=/data/home/harleyhuang/bin/svndiff 


gitdiff的使用方法
在.gitconfig里添加如下配置 然后把gitdiff文件放在bin路径下
[diff]
external = gitdiff
[pager]
diff =


plug.vim 插件
PlugInstall 安装插件

git clone https://github.com/rupa/z.git

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install 全部yes

sudo yum install ripgrep
sudo yum install bat
sudo yum install cloc
curl -sL https://mirrors.tencent.com/repository/generic/gongfeng-copilot/vim/install.sh | sh

软连接：
/home/harleyhuang/.vim/coc-settings.json -> ../vim_env/coc-settings.json.ccls   // 由于clang太卡了所以切会到ccls了
/home/harleyhuang/.vimrc -> vim_env/vimrc_ccls
/home/harleyhuang/.bashrc -> vim_env/bashrc
/home/harleyhuang/.gitignore_global -> vim_env/gitignore_global
/home/harleyhuang/.gitconfig -> vim_env/gitconfig
/home/harleyhuang/.clang-format -> vim_env/clang-format
/home/harleyhuang/.config/clangd/config.yaml -> vim_env/config.yaml
/home/harleyhuang/.tmux.conf -> vim_env/tmux.conf
/home/harleyhuang/.tmux.conf.local -> vim_env/tmux.conf.local

bash_profile 部分配置是mac使用

coc-nvim注意:
1. 用CocList extensions查询已经安装的coc插件
2. 需要的coc插件为:
coc-diagnostic 
coc-clangd (If you've configured clangd as a languageServer in coc-settings.json, you should remove it to avoid running clangd twice!)

vim中查看clangd的log:
vim中输入:CocCommand workspace.showOutput，选择clangd的窗口
:CocList diagnostics
或者vim中输入:CocDiagnostics
如果想要查看更为详细的clangd log，需要在~/.vim/coc-settings.json中设置--log=verbose

vim --startuptime vim.log 查看vimlog看启动时间定为卡顿问题
