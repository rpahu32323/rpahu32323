# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
inherit eutils git-r3 autotools

DESCRIPTION="Nintendo Wii Remote Linux Device Driver Tools"
HOMEPAGE="https://github.com/dvdhrm/xwiimote"
EGIT_REPO_URI="https://github.com/dvdhrm/xwiimote.git"

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
	eapply_user
}

src_install()
{
	emake DESTDIR="${D}" install || die

	insinto /etc/X11/xorg.conf.d
	doins "${S}"/res/50-xorg-fix-xwiimote.conf
}
