# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{12,13,14} )

inherit distutils-r1 pypi

DESCRIPTION="Simple swig bindings for the GNU Linear Programming Kit"
HOMEPAGE="https://github.com/biosustain/swiglpk"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~hppa ~ia64 ~x86"
IUSE=""
RESTRICT="mirror"

RDEPEND="
	sci-mathematics/glpk
	dev-lang/swig
"
