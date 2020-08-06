# Copyright 2017-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.3.0

EAPI=7

CRATES="
adler32-1.0.4
ahash-0.3.8
aho-corasick-0.7.10
ansi_term-0.11.0
ansi_term-0.12.1
approx-0.1.1
arrayref-0.3.5
arrayvec-0.4.12
askalono-0.4.0
atty-0.2.13
autocfg-0.1.7
autocfg-1.0.0
backtrace-0.3.40
backtrace-sys-0.1.32
base64-0.10.1
base64-0.11.0
bitflags-1.2.1
blake2b_simd-0.5.8
block-buffer-0.7.3
block-padding-0.1.4
bstr-0.2.8
byte-tools-0.3.1
bytecount-0.6.0
byteorder-1.3.2
cc-1.0.46
cfg-if-0.1.10
cgmath-0.16.1
chrono-0.4.11
chrono-tz-0.5.2
clap-2.33.1
cloudabi-0.0.3
color_quant-1.0.1
colored-1.8.0
const-random-0.1.8
const-random-macro-0.1.8
constant_time_eq-0.1.4
crc32fast-1.2.0
crossbeam-channel-0.4.2
crossbeam-deque-0.7.3
crossbeam-epoch-0.8.2
crossbeam-queue-0.2.3
crossbeam-utils-0.6.6
crossbeam-utils-0.7.2
dashmap-3.11.4
deflate-0.7.20
deunicode-0.4.3
digest-0.8.1
dirs-2.0.2
dirs-sys-0.3.4
either-1.5.3
encoding_rs-0.8.20
encoding_rs_io-0.1.7
env_logger-0.7.1
failure-0.1.6
failure_derive-0.1.6
fake-simd-0.1.2
fnv-1.0.6
fuchsia-cprng-0.1.1
generic-array-0.12.3
getrandom-0.1.13
gif-0.10.3
git2-0.13.6
glob-0.3.0
globset-0.4.5
globwalk-0.8.0
grep-matcher-0.1.3
grep-searcher-0.1.7
heck-0.3.1
hermit-abi-0.1.14
humansize-1.1.0
humantime-1.3.0
idna-0.2.0
ignore-0.4.16
image-0.22.3
inflate-0.4.5
itoa-0.4.4
jobserver-0.1.17
jpeg-decoder-0.1.16
lazy_static-1.4.0
libc-0.2.65
libgit2-sys-0.12.7+1.0.0
libz-sys-1.0.25
lock_api-0.3.4
log-0.4.8
lzw-0.10.0
maplit-1.0.2
matches-0.1.8
maybe-uninit-2.0.0
memchr-2.2.1
memmap-0.7.0
memoffset-0.5.1
nodrop-0.1.14
num-derive-0.2.5
num-integer-0.1.41
num-iter-0.1.39
num-rational-0.2.2
num-traits-0.1.43
num-traits-0.2.8
num_cpus-1.13.0
once_cell-1.4.0
onefetch-2.3.0
opaque-debug-0.2.3
parking_lot-0.10.2
parking_lot_core-0.7.2
parse-zoneinfo-0.3.0
percent-encoding-2.1.0
pest-2.1.2
pest_derive-2.1.0
pest_generator-2.1.1
pest_meta-2.1.2
pkg-config-0.3.16
png-0.15.0
ppv-lite86-0.2.8
proc-macro-hack-0.5.16
proc-macro2-0.4.30
proc-macro2-1.0.18
quick-error-1.2.3
quote-0.6.13
quote-1.0.2
rand-0.4.6
rand-0.7.3
rand_chacha-0.2.2
rand_core-0.3.1
rand_core-0.4.2
rand_core-0.5.1
rand_hc-0.2.0
rand_os-0.1.3
rayon-1.3.1
rayon-core-1.7.1
rdrand-0.4.0
redox_syscall-0.1.56
redox_users-0.3.1
regex-1.3.9
regex-syntax-0.6.18
rgb-0.8.14
rmp-0.8.8
rmp-serde-0.13.7
rust-argon2-0.5.1
rustc-demangle-0.1.16
rustc_version-0.2.3
ryu-1.0.2
same-file-1.0.5
scoped_threadpool-0.1.9
scopeguard-1.0.0
semver-0.9.0
semver-parser-0.7.0
serde-1.0.114
serde_derive-1.0.114
serde_json-1.0.55
sha-1-0.8.1
slug-0.1.4
smallvec-0.6.10
smallvec-1.4.0
strsim-0.8.0
strum-0.18.0
strum_macros-0.18.0
syn-0.15.44
syn-1.0.33
synstructure-0.12.1
tera-1.3.1
term_size-0.3.2
termcolor-1.0.5
textwrap-0.11.0
thread_local-1.0.1
tiff-0.3.1
time-0.1.42
tokei-12.0.4
toml-0.5.6
typenum-1.11.2
ucd-trie-0.1.2
unic-char-property-0.9.0
unic-char-range-0.9.0
unic-common-0.9.0
unic-segment-0.9.0
unic-ucd-segment-0.9.0
unic-ucd-version-0.9.0
unicode-bidi-0.3.4
unicode-normalization-0.1.8
unicode-segmentation-1.3.0
unicode-width-0.1.6
unicode-xid-0.1.0
unicode-xid-0.2.0
url-2.1.1
vcpkg-0.2.7
vec_map-0.8.1
walkdir-2.2.9
wasi-0.7.0
winapi-0.3.8
winapi-i686-pc-windows-gnu-0.4.0
winapi-util-0.1.2
winapi-x86_64-pc-windows-gnu-0.4.0
wincolor-1.0.2
winconsole-0.10.0
zstd-0.4.28+zstd.1.4.3
zstd-safe-1.4.13+zstd.1.4.3
zstd-sys-1.4.13+zstd.1.4.3
"

inherit cargo

DESCRIPTION="Git repository summary on your terminal"
HOMEPAGE="https://github.com/o2sh/onefetch"
SRC_URI="$(cargo_crate_uris ${CRATES})"
RESTRICT="mirror"
LICENSE="MIT Apache-2.0 BSD-2 CC0-1.0 ISC MPL-2.0 ZLIB BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=""
BDEPEND="elibc_musl? ( >=virtual/rust-1.44.0 )"

src_install() {
	cargo_src_install
	doman onefetch.1
	einstalldocs
}