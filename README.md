# World as Relation

**Surface / projection / visible relation.**

World as Relation is an independent GeoGeek Observatory deployment of the production projection laboratory. It compares projection families, exposes graticule and Tissot analysis, supports interactive rotation and zoom, and relates cartographic distortion to current data layers.

## Public instrument

https://geogeeklab.github.io/world-as-relation/

## Runtime

The production runtime is pinned to a specific commit of `GeoGeekLab/GeoGeekLab.github.io`. See `PRODUCTION.md` for the exact baseline, data-layer provenance, projection limits, and deployment policy.

## Local shell

```bash
python -m http.server 8000
```

Open `http://localhost:8000`.

The instrument requires network access for its pinned runtime and declared Natural Earth, USGS, NASA EONET, and NOAA SWPC sources.

## Deployment

Pushes to `main` deploy through `.github/workflows/pages.yml`. Static production-contract checks run before the Pages artifact is uploaded.

Third-party software and data remain subject to their respective terms and licenses. This repository does not introduce a project license that is absent from the source project.
