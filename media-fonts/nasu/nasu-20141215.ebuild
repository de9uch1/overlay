# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
inherit font

MY_P="NasuFont"
DESCRIPTION="Japanese TrueType font"
HOMEPAGE="http://itouhiro.hatenablog.com/entry/20140917/font"
SRC_URI="mirror://sourceforge.jp/users/7/7587/${MY_P}-${PV}.zip"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"

RESTRICT="binchecks strip"

S="${WORKDIR}/${MY_P}${PV}"
FONT_S="${S}"
FONT_SUFFIX="ttf"
