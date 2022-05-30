# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit multilib-build

DESCRIPTION="Meta-ebuild for clang runtime libraries"
HOMEPAGE="https://clang.llvm.org/"
SRC_URI=""

LICENSE="metapackage"
SLOT="$(ver_cut 1-3)"
KEYWORDS="amd64 arm arm64 ppc64 ~riscv x86 ~amd64-linux ~ppc-macos ~x64-macos ~loong"
IUSE="+compiler-rt libcxx"
REQUIRED_USE=""

RDEPEND="
	compiler-rt? (
		~sys-libs/compiler-rt-${PV}:${SLOT}
	)
	libcxx? ( >=sys-libs/libcxx-${PV}[${MULTILIB_USEDEP}] )
	"
