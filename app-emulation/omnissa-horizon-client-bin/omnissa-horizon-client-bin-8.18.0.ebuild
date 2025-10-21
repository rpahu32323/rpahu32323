# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit xdg-utils

DESCRIPTION="Omnissa Horizon View client"
HOMEPAGE="https://docs.omnissa.com/de-DE/bundle/HorizonOverviewDeployment/page/AboutHorizon8.html"
SRC_URI=" https://download3.omnissa.com/software/CART26FQ2_LIN_2506_TARBALL/Omnissa-Horizon-Client-Linux-2506-8.16.0-16536624989.tar.gz -> ${PF}.tar.gz"

RESTRICT="mirror"

LICENSE="omnissa"
SLOT="0/2506"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	app-accessibility/at-spi2-core
	dev-cpp/atkmm
	dev-cpp/cairomm
	dev-cpp/glibmm
	dev-cpp/gtkmm
	dev-cpp/pangomm
	dev-libs/glib
	dev-libs/libsigc++
	dev-libs/libxml2-compat
	dev-libs/openssl
	media-libs/gst-plugins-base
	media-libs/gstreamer
	media-libs/harfbuzz
	media-libs/libpulse
	media-libs/libv4l
	net-misc/curl
	sys-apps/systemd-utils
	sys-apps/util-linux
	sys-devel/gcc
	sys-libs/glibc
	sys-libs/zlib
	x11-libs/cairo
	x11-libs/gdk-pixbuf
	x11-libs/gtk+:3
	x11-libs/libvdpau
	x11-libs/libX11
	x11-libs/libxcb
	x11-libs/libXcursor
	x11-libs/libXext
	x11-libs/libXi
	x11-libs/libXinerama
	x11-libs/libxkbfile
	x11-libs/libXrandr
	x11-libs/libXrender
	x11-libs/libXScrnSaver
	x11-libs/libXtst
	x11-libs/pango
"

RDEPEND="${DEPEND}"

QA_PREBUILT="
	usr/lib64/*
	usr/lib64/pcoip/vchan_plugins/*
	usr/lib64/omnissa/gcc/*
	usr/lib64/omnissa/*
	usr/lib64/omnissa/view/vdpService/*
	usr/lib64/omnissa/view/software/*
	usr/lib64/omnissa/view/vaapi/*
	usr/lib64/omnissa/view/lib/*
	usr/lib64/omnissa/view/vaapi2.7/*
	usr/lib64/omnissa/view/vdpau/*
	usr/lib64/omnissa/view/vaapi2/*
"

src_unpack() {
	default

	# unpack the needed(?) parts
	unpack "${WORKDIR}"/*/x64/Omnissa-Horizon-PCoIP-${SLOT#*/}-*.tar.gz
	unpack "${WORKDIR}"/*/x64/Omnissa-Horizon-USB-${SLOT#*/}-*.tar.gz
	unpack "${WORKDIR}"/*/x64/Omnissa-Horizon-Client-${SLOT#*/}-*.tar.gz

	# make the client the new source
	mv "${WORKDIR}"/Omnissa-Horizon-PCoIP-${SLOT#*/}-*.x64 ${S}
	cp -a  "${WORKDIR}"/Omnissa-Horizon-USB-${SLOT#*/}-*.x64/* ${S}
	cp -a "${WORKDIR}"/Omnissa-Horizon-Client-${SLOT#*/}-*.x64/* ${S}
}

src_prepare() {
	default

	# removing un-needed docs (willl reinstall them later)
	mv "${S}"/usr/share/doc/omnissa-horizon-client "${WORKDIR}/${P}_docs"

	# lib to lib64 for strict multilib
	mv "${S}"/usr/lib "${S}"/usr/lib64
	sed -i 's~/usr/lib/~/usr/lib64/~g' "${S}"/usr/bin/horizon-* || die "could't patch library path"

	# put udev rule in the right place
	mkdir "${S}"/usr/lib
	mv "${S}"/etc/udev "${S}"/usr/lib/udev

	# correct the init script
	sed -i 's~BINDIR=/usr/bin~BINDIR=/usr/lib64/omnissa/horizon/usb~g' "${S}"/etc/init.d/horizon-USBArbitrator || \
		die "couldn't patch the usb init script"

	# correcting desktop-file
	sed -i 's~Application;Network;~Network;~g' "${S}"/usr/share/applications/horizon-client.desktop || \
		die "couldn't patch desktop file"
}

src_install() {

	# copy the files 
	cp -a usr "${D}"
	cp -a etc "${D}"

	# ugly hack: horizon-protocol has /usr/lib hardcoded
	# 		add some symlinks to make it work in
	# 		strict multilib
	dosym -r /usr/lib64/omnissa /usr/lib/omnissa
	dosym -r /usr/lib64/pcoip /usr/lib/pcoip

	# install docs
	dodoc "${WORKDIR}/${P}_docs/"*.txt

}

pkg_postinst() {
	xdg_desktop_database_update
}

pkg_postrm() {
	xdg_desktop_database_update
}
