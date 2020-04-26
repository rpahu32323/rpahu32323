# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{7,8} )

DISTUTILS_USE_SETUPTOOLS=no

inherit distutils-r1

DESCRIPTION="Simple swig bindings for the GNU Linear Programming Kit"
HOMEPAGE="https://github.com/biosustain/swiglpk"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~hppa ~ia64 ~x86"
IUSE=""

RDEPEND="sci-mathematics/glpk"
