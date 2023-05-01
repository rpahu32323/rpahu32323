# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{9,10,11} )

DISTUTILS_USE_SETUPTOOLS=bdepend

inherit distutils-r1

DESCRIPTION="Microsoft Graph and Office 365 API made easy"
HOMEPAGE="https://github.com/O365/python-o365"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~hppa ~ia64 ~x86"
IUSE=""

RDEPEND="
	>=dev-python/requests-2.18.0
	>=dev-python/requests-oauthlib-1.2.0
	>=dev-python/python-dateutil-2.7
	>=dev-python/pytz-2018.5
	>=dev-python/tzlocal-1.5.0
	>=dev-python/beautifulsoup4-4.0.0
	>=dev-python/stringcase-1.2.0
"


python_prepare_all() {
	# Req'd to avoid file collisions
	sed -e s":find_packages():find_packages(exclude=['tests']):" -i setup.py || die

	distutils-r1_python_prepare_all
}

