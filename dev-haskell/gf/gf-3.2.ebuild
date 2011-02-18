# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.11

EAPI="2"

CABAL_FEATURES="bin lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="Grammatical Framework"
HOMEPAGE="http://www.grammaticalframework.org"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2 LGPL-2 BSD3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/haskeline
		dev-haskell/mtl
		>=dev-lang/ghc-6.12.1"
DEPEND="${RDEPEND}
		dev-haskell/alex
		>=dev-haskell/cabal-1.8
		dev-haskell/happy"

src_prepare() {
	cd "${S}"
	epatch "${FILESDIR}/gf-3.2-ghc-7.patch"
}
