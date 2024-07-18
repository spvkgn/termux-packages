TERMUX_PKG_HOMEPAGE=https://github.com/axboe/fio
TERMUX_PKG_DESCRIPTION="Flexible I/O Tester"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="3.37"
TERMUX_PKG_SRCURL=https://github.com/axboe/fio/archive/refs/tags/fio-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=b59099d42d5c62a8171974e54466a688c8da6720bf74a7f16bf24fb0e51ff92d
TERMUX_PKG_DEPENDS="openssl, libandroid-shmem, libaio"
TERMUX_PKG_SUGGESTS="python"
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_AUTO_UPDATE=true

termux_step_pre_configure() {
	sed -i "s/@VERSION@/${TERMUX_PKG_VERSION}/g" $TERMUX_PKG_SRCDIR/Makefile
}
