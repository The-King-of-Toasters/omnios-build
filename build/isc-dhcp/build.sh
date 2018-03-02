#!/usr/bin/bash
#
# CDDL HEADER START
#
# This file and its contents are supplied under the terms of the
# Common Development and Distribution License ("CDDL"), version 1.0.
# You may only use this file in accordance with the terms of version
# 1.0 of the CDDL.
#
# A full copy of the text of the CDDL should have accompanied this
# source.  A copy of the CDDL is also available via the Internet at
# http://www.illumos.org/license/CDDL.
#
# CDDL HEADER END
#
#
# Copyright 2015 OmniTI Computer Consulting, Inc.  All rights reserved.
#
# Load support functions
. ../../lib/functions.sh

PROG=dhcp
VER=4.3.6-P1
VERHUMAN=$VER
PKG=network/service/isc-dhcp
SUMMARY="ISC DHCP"
DESC="$SUMMARY $VER"

DEPENDS_IPS="system/library"

# XXX 32-bit until Y2038 rears its ugly head.
BUILDARCH=32

# Doesn't work with parallel gmake
NO_PARALLEL_MAKE=1

# Use old gcc4 standards level for this.
export CFLAGS="$CFLAGS -std=gnu89"

CONFIGURE_OPTS="--enable-use-sockets --enable-ipv4-pktinfo --prefix=$PREFIX --bindir=$PREFIX/bin --sbindir=$PREFIX/sbin"

pre_package() {
    # Make directories and install extra files before package construction.
    logcmd mkdir -p $DESTDIR/usr/share/isc-dhcp/examples \
        || logerr "mkdir of $DESTDIR/usr/share/isc-dhcp/examples failed"
    logcmd mkdir -p $DESTDIR/var/db || logerr "mkdir of $DESTDIR/var/db failed"
    logcmd mkdir -p $DESTDIR/var/db || logerr "mkdir of $DESTDIR/var/db failed"
    logcmd touch $DESTDIR/var/db/dhcpd.leases
    logcmd touch $DESTDIR/var/db/dhcpd6.leases
}

init
download_source $PROG $PROG $VER
patch_source
prep_build
build
install_smf network isc-dhcp.xml dhcrelay
pre_package
VER=${VER//-P/.}
VER=${VER//-W/.}
make_package
clean_up

# Vim hints
# vim:ts=4:sw=4:et:
