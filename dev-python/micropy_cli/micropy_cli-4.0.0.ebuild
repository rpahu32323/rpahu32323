# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{9,10,11} )

DISTUTILS_USE_SETUPTOOLS=rdepend

inherit distutils-r1

DESCRIPTION="Micropython project management/generation tool."
HOMEPAGE="https://github.com/BradenM/micropy-cli"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~hppa ~ia64 ~x86"
IUSE=""

RDEPEND="
		>=dev-python/boltons-19.3.0
		dev-python/cachier
		dev-python/click
		dev-python/colorama
		<dev-python/dpath-2.0.0
		dev-python/GitPython
		dev-python/jinja
		dev-python/jsonschema
		dev-python/packaging
		dev-python/questionary
		dev-python/requests
		dev-python/requirements-parser
		dev-python/tqdm
		dev-python/pyminifier
		dev-python/rshell
"

src_prepare() {
		# copy hidden template files
		sed -i "s/\['temp/\['template\/.*', 'temp/g" setup.py || die
		eapply_user
}
