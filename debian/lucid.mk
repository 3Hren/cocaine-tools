#!/usr/bin/make -f

DEB_PYTHON_SYSTEM=pycentral

include /usr/share/cdbs/1/rules/debhelper.mk
include /usr/share/cdbs/1/class/python-distutils.mk

install/cocaine-tools::
	install -d $(DEB_DESTDIR)usr/bin
	dh_bash-completion

install/cocaine-tornado-proxy::
	install -d $(DEB_DESTDIR)etc/cocaine
	install -m755 scripts/init/cocaine-tornado-proxy.conf $(DEB_DESTDIR)etc/cocaine/cocaine-tornado-proxy.conf
