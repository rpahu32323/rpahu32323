# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 python3_{4,5,6} )

inherit distutils-r1

DESCRIPTION="Remove a package and its unused dependencies."
HOMEPAGE="https://github.com/invl/pip-autoremove"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~hppa ~ia64 ~x86"
IUSE=""

DEPEND="${DEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]"
