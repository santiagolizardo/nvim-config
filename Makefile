
.PHONY: links
links:
	ln -sf $(PWD)/.vim ~/.config/nvim

.PHONY: unlinks
unlinks:
	rm -f ~/.config/nvim

.PHONY: update-submodule
update-submodules:
	git submodule update --recursive --remote

