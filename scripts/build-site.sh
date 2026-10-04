#!/usr/bin/env bash
set -euo pipefail

PIN="d949bd75870bfd49f6d12b297e6cca02de107f9c"
RAW="https://raw.githubusercontent.com/GeoGeekLab/GeoGeekLab.github.io/${PIN}/site"

rm -rf _site
mkdir -p _site/runtime _site/vendor
cp index.html README.md PRODUCTION.md _site/
touch _site/.nojekyll

curl --fail --silent --show-error --location --retry 3 \
  "${RAW}/world-projection-lab.js" \
  --output _site/runtime/world-projection-lab.js
curl --fail --silent --show-error --location --retry 3 \
  "https://cdn.jsdelivr.net/npm/d3@7.9.0/dist/d3.min.js" \
  --output _site/vendor/d3.min.js
curl --fail --silent --show-error --location --retry 3 \
  "https://cdn.jsdelivr.net/npm/d3-geo-projection@4/dist/d3-geo-projection.min.js" \
  --output _site/vendor/d3-geo-projection.min.js

python - <<'PY'
from pathlib import Path
p = Path('_site/runtime/world-projection-lab.js')
s = p.read_text()
s = s.replace('https://cdn.jsdelivr.net/npm/d3@7.9.0/dist/d3.min.js', './vendor/d3.min.js')
s = s.replace('https://cdn.jsdelivr.net/npm/d3-geo-projection@4/dist/d3-geo-projection.min.js', './vendor/d3-geo-projection.min.js')
p.write_text(s)
PY

test -s _site/runtime/world-projection-lab.js
test -s _site/vendor/d3.min.js
test -s _site/vendor/d3-geo-projection.min.js
grep -q 'window.GeoProjectionLab' _site/runtime/world-projection-lab.js
! grep -q 'cdn.jsdelivr.net/npm/d3' _site/runtime/world-projection-lab.js
! grep -R -q 'cdn.jsdelivr.net/gh/GeoGeekLab/GeoGeekLab.github.io' _site

(
  cd _site
  find runtime vendor -type f -print0 | sort -z | xargs -0 sha256sum > runtime-manifest.sha256
)
