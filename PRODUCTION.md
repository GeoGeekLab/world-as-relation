# Production contract

`world-as-relation` is the public entrypoint for the production *WORLD AS RELATION* instrument.

## Runtime

- Source repository: `GeoGeekLab/GeoGeekLab.github.io`
- Tested source revision: `de142ef7a2002498b01fae22ff8734b42475de9c`
- Runtime release: `20261004b`
- Production channel: `https://geogeeklab.github.io/`
- Shared bootstrap: `/core/observatory-entry.js`
- Projection runtime: `/world-projection-lab.js`
- Provider control: `/core/provider-stability.js` + `/core/data-supply.js`

## Geospatial provider contract

Natural Earth reference geometry is normalized to a fixed source revision by the provider-stability layer. USGS earthquake and NOAA aurora requests use the shared GeoGeek data-supply adapters. The NOAA aurora product link is canonicalized to `https://www.spaceweather.gov/products/aurora-30-minute-forecast`.

NASA EONET remains a request-time event provider. Projection families, graticules, Tissot indicatrices, overlay geometry, and inspector behavior are supplied by the main production runtime.

## Release checks

The repository validates the source revision, shared bootstrap reference, Chromium instrument mount, absence of `.instrument-error`, provider/Data Supply installation, absence of floating Natural Earth requests, NOAA canonical-link behavior, instrument screenshot, Pages deployment, and the deployed public endpoint.
