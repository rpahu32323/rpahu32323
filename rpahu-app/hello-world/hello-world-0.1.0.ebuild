# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit autotools

DESCRIPTION="A test app for playing with git, github, autotools, and ebuilds"
HOMEPAGE="https://github.com/rpahu32323/hello-world"
SRC_URI="https://github.com/rpahu32323/hello-world/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""
RESTRICT="mirror"

src_prepare() {
	eautoreconf
	default
}
