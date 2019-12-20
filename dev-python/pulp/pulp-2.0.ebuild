# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{5,6,7} )

DISTUTILS_USE_SETUPTOOLS=rdepend

inherit distutils-r1

MY_PN="PuLP"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="PuLP is an LP modeler written in python."
HOMEPAGE="https://github.com/coin-or/pulp"
SRC_URI="mirror://pypi/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~hppa ~ia64 ~x86"
IUSE=""

RDEPEND="dev-python/pyparsing"

S="${WORKDIR}/${MY_P}"
