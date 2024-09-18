# GitHook
## hook规则
1. master-不能push、不能commit
2. release-不能push、不能commit
3. 所有分支之间不能merge
4. dev分支不能被rebase
5. 在dev分支上可以rebase所有非dev分支
5. release分支只能在dev分支上rebase
