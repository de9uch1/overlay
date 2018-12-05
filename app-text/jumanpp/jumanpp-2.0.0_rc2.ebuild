# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="A new morphological analyser that considers semantic plausibility of word sequences by using a recurrent neural network language model."

MY_V="${PV/_/-}"

HOMEPAGE="http://nlp.ist.i.kyoto-u.ac.jp/index.php?JUMAN++"
SRC_URI="https://github.com/ku-nlp/${PN}/releases/download/v${MY_V}/${PN}-${MY_V}.tar.xz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 x86"

DEPEND=""
RDEPEND="${DEPEND}"

S="${WORKDIR}/${PN}-${MY_V}"

src_compile() {
    mkdir bld
    cd bld
    cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=${EPREFIX}
}

src_install() {
    cd ${S}/bld
	emake DESTDIR="${D}" install || die "emake install failed"
}
