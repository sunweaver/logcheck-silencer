DESTDIR   =
prefix    = /usr
sbindir   = $(prefix)/sbin
sysconfdir= /etc
pkgsysconfdir= $(sysconfdir)/logcheck-silencer

# Install scripts in lib/, to make it trivial to rewrite the internal tools
# in any language, even compiled ones, without having to update the path used
# by the callers.
bindir = $(prefix)/sbin

INSTALL = install

all:

install:
	$(INSTALL) -d $(DESTDIR)$(bindir)/. $(DESTDIR)$(pkgsysconfdir)/.
	$(INSTALL) logcheck-silencer $(DESTDIR)$(bindir)/.

distclean: clean
clean:
