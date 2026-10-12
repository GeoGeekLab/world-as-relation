# World as Relation

**Map projection · distortion tensor · graticule · Tissot indicatrix · thematic overlay**

*WORLD AS RELATION* is a cartographic and GIScience instrument for studying geographic coordinate transformation and projection distortion. It maps longitude–latitude coordinates **(λ, φ)** into planar coordinates **(x, y)** and exposes projection behavior through graticules, Tissot indicatrices, interactive rotation and zoom, and geospatial overlays. The current Lab adds synchronized two-view comparison and numerical local distortion readouts.

**In the Lab:** [World as Relation](https://geogeeklab.github.io/lab.html?release=20261011v107watercache1) · [Instrument record](https://geogeeklab.github.io/records/lab-l12.html).

<p align="center">
  <a href="https://geogeeklab.github.io/world-as-relation/">
    <img src="https://geogeeklab.github.io/world-as-relation/assets/instrument.png" alt="World as Relation instrument" width="720">
  </a>
</p>

## Instrument capabilities

- **Switch among projection families.** Compare cylindrical, pseudocylindrical, azimuthal, equal-area, conformal, and compromise projections.
- **Inspect graticule geometry.** Examine transformed meridians, parallels, poles, edges, and discontinuities.
- **Diagnose local distortion.** Use Tissot indicatrices to inspect directional scale, areal deformation, and angular deformation.
- **Recenter and rescale the view.** Rotate, pan, and zoom the projected globe.
- **Overlay geospatial phenomena.** Add land geometry, recent earthquakes, active natural events, and auroral products.
- **Compare projection properties.** Evaluate area, angle, shape, distance, direction, and edge behavior across projections.
- **Compare two maps directly.** Use the synchronized side-by-side view with a second projection. The geographic selection, rotation, zoom, and data layers remain aligned; matching pixel zoom is not matching physical ground scale.
- **Measure local projection behavior.** Select a geographic location for a numerical-Jacobian estimate of local principal scales, areal factor and maximum angular deformation.
- **Inspect the projection trade-off.** Use task presets (relative area, local shape, visible hemisphere), searchable projection catalog, and source/freshness information for overlaid data.

## Cartographic model

A projection transforms geographic coordinates into planar coordinates. Local scale varies with position and direction. Tissot indicatrices visualize this variation through changes in ellipse size, orientation, and eccentricity. Graticules show the global transformation of meridians and parallels.

The production runtime uses the D3 geographic stack, including [`d3-geo-projection`](https://github.com/d3/d3-geo-projection).

## Lab comparison and distortion model

The current projection runtime is [`site/world-projection-lab.js`](https://github.com/GeoGeekLab/GeoGeekLab.github.io/blob/main/site/world-projection-lab.js) (`20261009v12`). Its local-distortion calculations are in [`site/world-distortion-v12.js`](https://github.com/GeoGeekLab/GeoGeekLab.github.io/blob/main/site/world-distortion-v12.js). The standalone entry loads this production runtime through the common [Observatory bootstrap](https://github.com/GeoGeekLab/GeoGeekLab.github.io/blob/main/site/core/observatory-entry.js). The projection runtime itself loads the distortion helper; the standalone page does not duplicate it.

The dashed Tissot reference circles are **finite 5° geographic circles**. The solid local ellipse and reported scale factors approximate an *infinitesimal* deformation at the selected location. The calculation uses a spherical-Earth numerical Jacobian. Clipped, near-polar or undefined measurements may display N/A.

The comparison view keeps the underlying geographic geometry fixed while changing the projection. A visually larger or smaller polygon does not establish a physical change in its area. Equal display zoom does not establish equal geodesic scale.

## Geospatial reference layers

| Layer | Source | Spatial role |
| --- | --- | --- |
| Land geometry | [Natural Earth](https://www.naturalearthdata.com/downloads/) 1:110m | Global reference geometry |
| Earthquakes | [USGS Earthquake Hazards Program](https://earthquake.usgs.gov/earthquakes/feed/) rolling past-24-hour feed | Georeferenced point events |
| Active natural events | [NASA Earth Observatory Natural Event Tracker (EONET)](https://eonet.gsfc.nasa.gov/docs/v3) | Event-based Earth-system data |
| Aurora | [NOAA Space Weather Prediction Center OVATION auroral products](https://www.spaceweather.gov/products/aurora-30-minute-forecast) | Geophysical forecast field |

## Projection analysis

The instrument supports comparison of projection families using the same geographic reference data and interaction model.

Key analytical dimensions include:

- areal scale;
- angular deformation;
- local shape;
- distance behavior;
- directional behavior;
- polar geometry;
- edge and interruption structure;
- central-meridian and orientation effects.

## Provenance and limitations

The reference world outlines use generalized Natural Earth 1:110m geometry. This is not a legal boundary authority. USGS event positions may be revised; NASA EONET is a curated list, not an exhaustive hazards inventory; NOAA OVATION is a forecast, not direct observation. The provider-stability/Data Supply layer normalizes supported sources, but request-time provider availability can still vary.

Projection preservation properties apply under their mathematical assumptions. No projection preserves shape, angle, distance, direction and area everywhere. Use the instrument to understand representation choices, not to infer measurement accuracy from visual appearance.

The Lab URL parameter `release=20261011v107watercache1` is an HTML/cache release token. It is separate from the shared loader's `20261004b` asset-release string and the repository's Git source reference.

## Instrument access

**Live instrument:** https://geogeeklab.github.io/world-as-relation/

Source runtime: [`GeoGeekLab/GeoGeekLab.github.io`](https://github.com/GeoGeekLab/GeoGeekLab.github.io)  
Source reference manifest: [`SOURCE.json`](./SOURCE.json)  
Production contract: [`PRODUCTION.md`](./PRODUCTION.md)

*GeoGeek note — a projection is a spatial operator, and every operator has a geometry.*
