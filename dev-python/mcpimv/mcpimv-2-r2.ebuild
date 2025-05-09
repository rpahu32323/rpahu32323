# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{12,13} )

inherit distutils-r1

DESCRIPTION="Minecraft: Pi edition API Python Library with changes by rpahu32323"
HOMEPAGE="https://github.com/rpahu32323/mcpi"
SRC_URI="https://github.com/rpahu32323/mcpi/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~hppa ~ia64 ~x86"
IUSE=""
