# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6,7} )
inherit distutils-r1

DESCRIPTION="A Python library for controlling YeeLight RGB bulbs."
HOMEPAGE="https://gitlab.com/stavros/python-yeelight https://pypi.org/project/yeelight/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	dev-python/future[${PYTHON_USEDEP}]
	dev-python/ifaddr
"
RDEPEND="${DEPEND}"
BDEPEND=""

distutils_enable_tests setup.py
distutils_enable_sphinx docs/source dev-python/sphinx_rtd_theme