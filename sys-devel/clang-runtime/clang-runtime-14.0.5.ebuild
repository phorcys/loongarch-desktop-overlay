# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit multilib-build

DESCRIPTION="Meta-ebuild for clang runtime libraries"
HOMEPAGE="https://clang.llvm.org/"

LICENSE="metapackage"
SLOT="$(ver_cut 1-3)"
KEYWORDS="~amd64 ~arm ~arm64 ~loong ~ppc ~ppc64 ~riscv ~sparc ~x86 ~amd64-linux ~ppc-macos ~x64-macos"
IUSE="+compiler-rt libcxx"
REQUIRED_USE=""

RDEPEND="
	libcxx? ( >=sys-libs/libcxx-${PV}[${MULTILIB_USEDEP}] )
"
