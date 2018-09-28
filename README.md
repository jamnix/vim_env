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
