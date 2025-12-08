# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{12,13} )

inherit distutils-r1 pypi

DESCRIPTION="Raspberry Pi Python module to access the pigpio daemon"
HOMEPAGE="http://abyz.me.uk/rpi/pigpio/"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

RESTRICT="mirror"
