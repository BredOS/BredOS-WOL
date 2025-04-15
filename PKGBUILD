# Maintainer: Bill Sideris <bill88t@bredos.org>

pkgname=bredos-wol
pkgver=1.0.0
pkgrel=1
pkgdesc='BredOS Wake-On-Lan service'
arch=(any)
url=https://github.com/BredOS/BredOS-WOL
license=('GPL3')

depends=('ethtool')

source=('enable-wol.service' 'enable-wol.sh')
sha256sums=('9928e818f17be73549f4601d50e944e86d73e96f862505373c3199229472369f'
            '7d765b1c4959ac1781a8c7c2a1d932f557e6e3c745fa288f547db4d2e94e6efd')

install=wol.install

package() {
    mkdir -p "${pkgdir}/usr/bin" "${pkgdir}/etc/systemd/system/"
    install -Dm755 "${srcdir}/enable-wol.sh" "${pkgdir}/usr/bin/enable-wol.sh"
    install -Dm644 "${srcdir}/enable-wol.service" "${pkgdir}/etc/systemd/system/enable-wol.service"
}
