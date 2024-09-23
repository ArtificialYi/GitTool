# GitTool
## hook规则
1. master-不能push、不能commit
2. release-不能push、不能commit
3. 所有分支之间不能merge
4. dev分支不能被rebase
5. 在dev分支上可以rebase所有非dev分支
6. release分支只能在dev分支上被rebase
7. 不能在release分支上创建分支

## 使用方式
### `make`
```
配置全局git钩子
```

### `make env-gitclean`
```
可以使用 gitclean 命令
清理本地已经被云删除的分支
```

### `make env-gitrbi`
```
可以使用 gitrbi 命令（默认比对master分支）
可以将与其他分支不同的所有commit合并至缓冲区
解决git rebase -i中squash的繁琐操作
commit数量<2时该命令无效
```