
run:
	ln -sf $(PWD)/.vim ~/.vim
	ln -sf $(PWD)/.vimrc ~/.vimrc

update-submodules:
	git submodule update --recursive --remote

