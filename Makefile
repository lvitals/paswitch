PREFIX   ?= /usr/local
RM       ?= rm -f
target   := paswitch

paswitch: main.c
	gcc -Wall -o $@ $^ -lpulse

clean:
	$(RM) paswitch

.PHONY: clean install

install: paswitch
	install $(target) $(PREFIX)/bin/

uninstall: paswitch
	$(RM) $(PREFIX)/bin/$(target)

