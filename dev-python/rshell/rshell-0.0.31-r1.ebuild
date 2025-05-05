# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{12,13} )

inherit distutils-r1

DESCRIPTION="Remote MicroPython shell."
HOMEPAGE="https://github.com/dhyland/rshell"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~hppa ~ia64 ~x86"
IUSE=""

RDEPEND="
		dev-python/pyserial
		dev-python/pyudev
"

src_prepare() {
		# remove the tests package from being installed
		sed -i "s/, 'tests'//g" setup.py || die
		eapply_user
}
