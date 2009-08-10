ifeq "$(PREFIX)" ""
export PREFIX=$(HOME)
endif

.PHONY: install

install:
	install -d -m 700 `find vim -type d | sed "s:^:$(PREFIX)/.:"`
	install -m 600 vimrc "$(PREFIX)/.vimrc"
	install -m 600 gvimrc "$(PREFIX)/.gvimrc"
	cp -r vim/* "$(PREFIX)/.vim"
	
