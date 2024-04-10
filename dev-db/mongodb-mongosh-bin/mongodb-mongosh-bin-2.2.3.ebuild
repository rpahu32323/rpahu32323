# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit desktop unpacker xdg

DESCRIPTION="The GUI for MongoDB"
HOMEPAGE="https://mongodb.com/compass https://github.com/mongodb-js/compass"
SRC_URI="https://github.com/mongodb-js/mongosh/releases/download/v${PV}/mongodb-mongosh_${PV}_amd64.deb"

LICENSE="SSPL-1"
SLOT="0"
KEYWORDS="~amd64"

S="${WORKDIR}"
