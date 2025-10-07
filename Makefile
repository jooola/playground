SHELL = bash

package:
ifndef VERSION
	$(error "VERSION is not defined")
endif
	touch package-$(VERSION).tgz
