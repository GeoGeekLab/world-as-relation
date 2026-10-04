# World as Relation

**Map projection · distortion tensor · graticule · Tissot indicatrix · thematic overlay**

*WORLD AS RELATION* is a cartographic and GIScience instrument for studying geographic coordinate transformation and projection distortion. It maps longitude–latitude coordinates **(λ, φ)** into planar coordinates **(x, y)** and exposes projection behavior through graticules, Tissot indicatrices, interactive rotation and zoom, and geospatial overlays.

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

## Cartographic model

A projection transforms geographic coordinates into planar coordinates. Local scale varies with position and direction. Tissot indicatrices visualize this variation through changes in ellipse size, orientation, and eccentricity. Graticules show the global transformation of meridians and parallels.

The production runtime uses the D3 geographic stack, including [`d3-geo-projection`](https://github.com/d3/d3-geo-projection).

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

## Instrument access

**Live instrument:** https://geogeeklab.github.io/world-as-relation/

Source runtime: [`GeoGeekLab/GeoGeekLab.github.io`](https://github.com/GeoGeekLab/GeoGeekLab.github.io)  
Pinned revision: [`SOURCE.json`](./SOURCE.json)  
Production contract: [`PRODUCTION.md`](./PRODUCTION.md)

*GeoGeek note — a projection is a spatial operator, and every operator has a geometry.*
