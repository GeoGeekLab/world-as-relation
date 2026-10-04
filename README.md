# World as Relation

**Surface / projection / visible relation**

World as Relation is a projection laboratory for examining how geographic relationships change when a curved Earth is transformed onto a flat display. It treats projection as an analytical operation rather than a neutral background choice.

> **GeoGeek principle:** A projection is an operation, not a wallpaper.

## Mission

The project holds geography and data layers in view while changing the mathematical transformation used to display them. The objective is to make distortion observable: area, shape, angle, distance, direction, edge behavior, and visual prominence can all shift when the projection changes.

No single world map preserves every geographic property. The instrument is therefore designed for comparison, not for selecting a universally “correct” projection.

## Projection as an experiment

Graticules and Tissot indicatrices provide geometric reference. Interactive rotation and zoom make it possible to move distortion through the field of view instead of treating it as a static property at the edge of a textbook diagram.

Current or reference data layers can then be inspected on top of that geometry. The important question is not only *where is the data?* but also *what has the projection done to the relation being shown?*

## Reference layers

The production instrument can draw from:

- Natural Earth 1:110m generalized cartographic geometry;
- USGS rolling past-24-hour earthquake events;
- NASA EONET open natural events;
- NOAA SWPC OVATION latest aurora forecast.

These layers do not share one observational meaning. They are used as distinct geographic references and retain their own source semantics.

## Interpretation

Projection choice can alter apparent size, spacing, orientation, continuity, and proximity. Natural Earth geometry is generalized reference data and is not a legal boundary authority. The OVATION aurora layer is a model forecast, not direct optical observation.

The laboratory is most useful when the projection itself becomes part of the question.

## Operations

**Public instrument**  
https://geogeeklab.github.io/world-as-relation/

The entry repository mounts the production projection laboratory from `GeoGeekLab/GeoGeekLab.github.io`, pinned to commit `d949bd75870bfd49f6d12b297e6cca02de107f9c`.

See [`PRODUCTION.md`](./PRODUCTION.md) for data-layer provenance, projection limits, and deployment policy.

For local inspection:

```bash
python -m http.server 8000
```

The production entry requires network access for its pinned runtime and declared reference sources.

---

Part of the **GeoGeek Observatory** — change the projection, then ask what changed in the argument.
