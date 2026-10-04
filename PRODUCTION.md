# Production contract

## Runtime baseline

This repository mounts the World as Relation production projection laboratory from `GeoGeekLab/GeoGeekLab.github.io` pinned to commit `d949bd75870bfd49f6d12b297e6cca02de107f9c`.

The production module loads D3 and d3-geo-projection and exposes the full projection catalog, graticule and Tissot analysis, interactive rotation/zoom, and data-layer inspection.

## Data contract

- Cartographic reference: Natural Earth 1:110m.
- Earthquakes: USGS rolling past-24-hour feed.
- Active natural events: NASA EONET open events.
- Aurora: NOAA SWPC OVATION latest forecast.

## Interpretation limits

Projection choice changes area, shape, angle, distance, direction, and edge behavior. Natural Earth geometry is generalized cartographic reference and is not a legal boundary authority. Aurora is a model forecast, not direct optical observation.

## Deployment contract

`main` deploys through GitHub Pages Actions. Static contract checks run before the Pages artifact is uploaded.

The production runtime is pinned to an immutable source commit. Runtime upgrades require an explicit pinned-SHA change in `index.html`.
