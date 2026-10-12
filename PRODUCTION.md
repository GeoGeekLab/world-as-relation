# Production contract

`world-as-relation` is the public entrypoint for the production *WORLD AS RELATION* instrument.

## Runtime

- Source repository: `GeoGeekLab/GeoGeekLab.github.io`
- Tested source revision: `12743de0f7d0e900031ec2cbbe17551255e271a5`
- Bootstrap asset release: `20261004b` (shared loader constant; distinct from the Lab HTML release)
- Production channel: `https://geogeeklab.github.io/`
- Shared bootstrap: `/core/observatory-entry.js`
- Projection runtime: `/world-projection-lab.js` (`20261009v12`)
- Local distortion math: `/world-distortion-v12.js` (loaded by the projection runtime)
- Provider control: `/core/provider-stability.js` + `/core/data-supply.js`

## Geospatial provider contract

Natural Earth reference geometry is normalized to a fixed source revision by the provider-stability layer. USGS earthquake and NOAA aurora requests use the shared GeoGeek data-supply adapters. The NOAA aurora product link is canonicalized to `https://www.spaceweather.gov/products/aurora-30-minute-forecast`.

NASA EONET remains a request-time event provider. Projection families, graticules, Tissot indicatrices, overlay geometry, and inspector behavior are supplied by the main production runtime.

## Release checks

The repository validates the source revision, shared bootstrap reference, Chromium instrument mount, absence of `.instrument-error`, provider/Data Supply installation, absence of floating Natural Earth requests, NOAA canonical-link behavior, instrument screenshot, Pages deployment, and the deployed public endpoint.

## Lab synchronization (20261011v107watercache1)

The v12 projection runtime already implements two-view comparison, task presets and local spherical-Jacobian distortion metrics. This wrapper deliberately keeps one common runtime rather than copying the projection code. The referenced source SHA is the inspected main-site tree, not an immutable asset lock: the shared origin serves its currently deployed code.

Lab reference: https://geogeeklab.github.io/lab.html?release=20261011v107watercache1
