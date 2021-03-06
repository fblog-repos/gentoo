# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6,7,8} )
DISTUTILS_USE_SETUPTOOLS=rdepend

inherit distutils-r1

DESCRIPTION="Natural sorting for Python"
HOMEPAGE="https://pypi.org/project/natsort/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~x86"
IUSE="test"

DEPEND="test? (
		dev-python/hypothesis[${PYTHON_USEDEP}]
		dev-python/pytest-mock[${PYTHON_USEDEP}]
		virtual/python-pathlib[${PYTHON_USEDEP}]
	)"

distutils_enable_tests pytest
