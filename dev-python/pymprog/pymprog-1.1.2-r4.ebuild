# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_12 )

inherit distutils-r1

DESCRIPTION="An easy and flexible mathematical programming environment for Python"
HOMEPAGE="https://pymprog.sourceforge.net"
#SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

SRC_URI="https://github.com/langit/pymprog/archive/refs/tags/v${PV}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~hppa ~ia64 ~x86"
IUSE=""

RDEPEND="dev-python/swiglpk"
