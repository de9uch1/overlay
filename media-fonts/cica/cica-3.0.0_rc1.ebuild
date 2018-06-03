# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
inherit font

DESCRIPTION="Japanese programming font"
HOMEPAGE="https://github.com/miiton/Cica"
SRC_URI="https://github.com/miiton/${PN~}/releases/download/v${PV/_/-}/${PN~}_v${PV/_/-}.zip"

LICENSE="UbuntuFontLicense-1.0 CC-BY-4.0 MIT Apache-2.0 OFL-1.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"

# Only installs fonts
RESTRICT="binchecks strip"

S="${WORKDIR}"
FONT_S="${S}"
FONT_SUFFIX="ttf"
