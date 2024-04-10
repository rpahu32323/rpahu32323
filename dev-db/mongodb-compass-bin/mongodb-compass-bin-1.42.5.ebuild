# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="The GUI for MongoDB"
HOMEPAGE="https://mongodb.com/compass https://github.com/mongodb-js/compass"
SRC_URI="https://github.com/mongodb-js/compass/releases/download/v${PV}/mongodb-compass-${PV}-linux-x64.tar.gz"

LICENSE="SSPL-1"
SLOT="0"
KEYWORDS="~amd64"

S="${WORKDIR}/MongoDB Compass-linux-x64"

src_install() {

	# copies files to image directory
	insinto /opt/mongodb/compass
	doins -r .

	# make some files executable
	fperms +x /opt/mongodb/compass/'MongoDB Compass'
	fperms +x /opt/mongodb/compass/chrome-sandbox
	fperms +x /opt/mongodb/compass/chrome_crashpad_handler
	fperms +x /opt/mongodb/compass/libEGL.so
	fperms +x /opt/mongodb/compass/libGLESv2.so
	fperms +x /opt/mongodb/compass/libffmpeg.so
	fperms +x /opt/mongodb/compass/libvk_swiftshader.so
	fperms +x /opt/mongodb/compass/libvulkan.so.1

	# add a symlink
	dosym -r /opt/mongodb/compass/'MongoDB Compass' /usr/bin/mongodb-compass-bin

}
