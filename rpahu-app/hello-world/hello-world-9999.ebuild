# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit autotools git-r3

DESCRIPTION="A test app for playing with git, github, autotools, and ebuilds"
HOMEPAGE="https://github.com/rpahu32323/hello-world"
EGIT_REPO_URI="https://github.com/rpahu32323/hello-world.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE=""

src_prepare() {
	eautoreconf
	default
}
