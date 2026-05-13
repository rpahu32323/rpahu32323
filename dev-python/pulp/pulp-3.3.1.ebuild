# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=1
PYPI_PN="pulp"
PYTHON_COMPAT=( python3_{12,13,14} )

inherit distutils-r1 pypi

DESCRIPTION="PuLP is an LP modeler written in python."
HOMEPAGE="https://github.com/coin-or/pulp"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~hppa ~ia64 ~x86"
IUSE=""
RESTRICT="mirror"

RDEPEND="dev-python/pyparsing"

S="${WORKDIR}/${MY_P}"
