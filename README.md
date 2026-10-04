# World as Relation

**Map projection · distortion · graticule · Tissot indicatrix · thematic overlay**

World as Relation is a cartographic instrument for studying how geographic coordinates are transformed into planar representations. It makes projection choice observable by combining multiple projection families with graticules, Tissot indicatrices, interactive rotation and zoom, and contemporary geospatial layers.

![World as Relation instrument](https://geogeeklab.github.io/world-as-relation/assets/instrument.png)

## Cartographic question

Every map projection redistributes geometric properties when geographic coordinates are mapped to a plane. The instrument allows area, angular, shape, distance, direction, edge behavior, and global continuity to be compared across projection families within the same visual environment.

Tissot indicatrices provide a local diagnostic of deformation. Graticules expose how meridians and parallels are transformed. Rotation and scale controls make the projection itself an object of inspection rather than an invisible background operation.

## Geospatial reference layers

| Layer | Source | Role |
| --- | --- | --- |
| Land geometry | Natural Earth 1:110m | Generalized cartographic reference |
| Earthquakes | USGS rolling past-24-hour feed | Georeferenced point-event overlay |
| Active natural events | NASA EONET | Event-based Earth-system context |
| Aurora | NOAA SWPC OVATION | Forecast geophysical field |

These overlays allow projection effects to be examined against real geographic distributions rather than abstract geometry alone. Their spatial patterns make scale, polar behavior, edge discontinuities, and areal deformation easier to evaluate.

## Cartographic scope

The instrument is useful for projection comparison, thematic cartography, geovisualization, global-scale spatial analysis, and teaching the geometry of geographic transformation. Natural Earth provides generalized reference geometry, while the live layers introduce point, event, and field data with different spatial supports.

## Instrument access

**Live instrument:** https://geogeeklab.github.io/world-as-relation/

This repository provides the public entrypoint. The production projection laboratory remains in `GeoGeekLab/GeoGeekLab.github.io`; `SOURCE.json` records the pinned upstream revision and `PRODUCTION.md` specifies data provenance, projection behavior, and deployment conditions.

*GeoGeek note — a projection is a spatial operator, not a backdrop.*
