
.PHONY: links
links:
	ln -sf $(PWD)/.vim ~/.config/nvim

.PHONY: unlinks
unlinks:
	rm -f ~/.config/nvim

.PHONY: update-submodules
update-submodules:
	git submodule update --recursive --remote

