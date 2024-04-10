# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="The MongoDB Shell"
HOMEPAGE="https://github.com/mongodb-js/compass"
SRC_URI="https://github.com/mongodb-js/mongosh/releases/download/v${PV}/mongosh-${PV}-linux-x64-openssl3.tgz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"

S="${WORKDIR}/mongosh-${PV}-linux-x64-openssl3"

src_install() {

	# copies files to image directory
	insinto /opt/mongodb/mongosh
	doins -r .

	# make some files executable
	fperms +x /opt/mongodb/mongosh/bin/mongosh
	fperms +x /opt/mongodb/mongosh/bin/mongosh_crypt_v1.so

	# add a symlink
	dosym -r /opt/mongodb/mongosh/bin/mongosh /usr/bin/mongosh-bin

}
