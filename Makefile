SHELL = bash

package:
ifndef VERSION
	$(error "VERSION is not defined")
endif
	echo $(VERSION) > package-$(VERSION)
	tar -cvzf package-$(VERSION).tgz package-$(VERSION)
	rm -f package-$(VERSION)
	cp package-$(VERSION).tgz other-$(VERSION).tgz

clean:
	rm -Rf dist package-* other-*