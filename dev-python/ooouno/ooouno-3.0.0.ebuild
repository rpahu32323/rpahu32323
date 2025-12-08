# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=poetry
PYTHON_COMPAT=( python3_{12,13} )

inherit distutils-r1 pypi

DESCRIPTION="A library of all classes, typings and types for the LibreOffice API."
HOMEPAGE="https://github.com/Amourspirit/python_ooouno"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"

RESTRICT="mirror"

RDEPEND="
	dev-python/types-unopy
	dev-python/typing-extensions
"
