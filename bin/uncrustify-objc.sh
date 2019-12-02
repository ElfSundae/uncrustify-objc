#!/bin/bash
set -euo pipefail

# https://github.com/ElfSundae/uncrustify-objc

ROOT="$(dirname "$0")/.."
uncrustify="$ROOT/uncrustify/uncrustify"
configFile="$ROOT/uncrustify/uncrustify.cfg"

srcPath=${@:-.}

find $srcPath -type f \
    ! -path "*/.git/*" ! -path "*/.svn/*" \
    ! -path "*/*.framework/*" ! -path "*/*.xcframework/*" \
    ! -path "*/Pods/*" ! -path "*/Carthage/*" \
    ! -path "*/Rome/*" \
    \( -name "*.[hm]" -o -name "*.mm" \) \
    -exec "$uncrustify" -c "$configFile" -l OC --replace --no-backup {} \;
