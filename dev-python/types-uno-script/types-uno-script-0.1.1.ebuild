# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{12,13} )

PYPI_NO_NORMALIZE=1

inherit distutils-r1 pypi

DESCRIPTION="UNO Types uno.py and unohelper.py"
HOMEPAGE="https://github.com/Amourspirit/python-types-uno-script"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
