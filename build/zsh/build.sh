#!/usr/bin/bash
#
# {{{ CDDL HEADER
#
# This file and its contents are supplied under the terms of the
# Common Development and Distribution License ("CDDL"), version 1.0.
# You may only use this file in accordance with the terms of version
# 1.0 of the CDDL.
#
# A full copy of the text of the CDDL should have accompanied this
# source. A copy of the CDDL is also available via the Internet at
# http://www.illumos.org/license/CDDL.
# }}}
#
# Copyright 2011-2012 OmniTI Computer Consulting, Inc.  All rights reserved.
# Copyright 2024 OmniOS Community Edition (OmniOSce) Association.
#
. ../../lib/build.sh

PROG=zsh
VER=5.9
PKG=shell/zsh
SUMMARY="Z shell"
DESC="The Z shell"

set_arch 64
# Needed for X/Open curses/termcap
set_standard XPG6

CONFIGURE_OPTS+="
    --enable-cap
    --enable-dynamic
    --enable-etcdir=/etc
    --enable-function-subdirs
    --enable-ldflags=-zignore
    --enable-libs=-lnsl
    --enable-maildir-support
    --enable-multibyte
    --enable-pcre
    --with-tcsetpgrp
    --disable-gdbm
"

# See illumos #3801. We don't want zsh to set _XOPEN_SOURCE_EXTENDED for us.
CONFIGURE_OPTS+=" zsh_cv_no_xopen=yes"

build_init() {
    CONFIGURE_OPTS[amd64_WS]="--enable-ldflags=\"-m64 -zignore\""
    CPPFLAGS[amd64]+=" -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64"

    CONFIGURE_OPTS[aarch64_WS]="
        --enable-ldflags=\"-zignore -L${SYSROOT[aarch64]}/usr/lib\"
    "
    CPPFLAGS[aarch64]+=" -I${SYSROOT[aarch64]}/usr/include"
}

HARDLINK_TARGETS=usr/bin/zsh-$VER
SKIP_LICENCES="*"
# zsh only ships .so files for its plugins
NO_SONAME_EXPECTED=1

PKGDIFF_HELPER='
    s:usr/share/zsh/[0-9.]*:usr/share/zsh/VERSION:
    s:usr/lib/amd64/zsh/[0-9.]*:usr/lib/amd64/zsh/VERSION:
'

post_install() {
    typeset arch=$1

    $MKDIR -p $DESTDIR/etc
    $CP $SRCDIR/files/system-zshrc $DESTDIR/etc/zshrc
    $CHMOD 644 $DESTDIR/etc/zshrc

    iconv -f 8859-1 -t utf-8 \
        $TMPDIR/$BUILDDIR/LICENCE > $TMPDIR/$BUILDDIR/LICENSE

    cross_arch $arch && return

    logcmd $EGREP -s link=dynamic $TMPDIR/$BUILDDIR/config.modules \
        || logerr "Dynamically-linked module build has failed"
}

init
download_source $PROG $PROG $VER
patch_source
run_autoreconf -fi
prep_build
build
run_testsuite
make_package
clean_up

# Vim hints
# vim:ts=4:sw=4:et:fdm=marker
