# 配置全局钩子
.PHONY: hook
hook:
	git config --global core.hooksPath $(shell pwd)/hooks

# 脚本
.PHONY:env-ln-init env-gitclean env-gitrbi
env-ln-init:
	ln -sf $(shell pwd)/sh/usr_local_bin.sh /etc/profile.d/usr_local_bin.sh
env-gitclean: env-ln-init
	ln -sf $(shell pwd)/sh/gitclean.sh /usr/local/bin/gitclean
env-gitrbi: env-ln-init
	ln -sf $(shell pwd)/sh/gitrbi.sh /usr/local/bin/gitrbi
