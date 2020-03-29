# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
inherit eutils git-r3 autotools



EGIT_REPO_URI="https://github.com/dvdhrm/xwiimote.git"

DESCRIPTION="Nintendo Wii Remote Linux Device Driver Tools"

HOMEPAGE="https://github.com/dvdhrm/xwiimote"

SRC_URI=""

LICENSE="BSD"

SLOT="0"

KEYWORDS="~x86 ~amd64"

IUSE=""

DEPEND="sys-libs/ncurses
		virtual/udev"

RDEPEND="${DEPEND}"

src_prepare()
{
	eautoreconf
	elibtoolize
}

src_install()
{
	emake DESTDIR="${D}" install || die

	insinto /etc/X11/xorg.conf.d
	doins "${S}"/res/50-xorg-fix-xwiimote.conf
}
