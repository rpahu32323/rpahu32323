# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{12,13} )

inherit distutils-r1

DESCRIPTION="Python scripts for LHU work"
SRC_URI="${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~hppa ~ia64 ~x86"
IUSE=""

RDEPEND="
	dev-python/pygments
	dev-python/pygobject
	dev-python/python-magic
	dev-python/selenium
"
