# World as Relation

<!-- GeoGeekLab VIS: BEGIN -->
<p align="center">
  <img src="https://raw.githubusercontent.com/GeoGeekLab/geogeeklab-visual-identity/main/logos/scientific-instruments/readme-artwork-v2/world-as-relation/readme-artwork.svg" alt="world-as-relation — GeoGeekLab scientific visual identity" width="380">
</p>
<!-- GeoGeekLab VIS: END -->

**Map projection · distortion · graticule · Tissot indicatrix · geographic layers**

*World as Relation* examines how map projections transform the geography of Earth. A shared global reference geometry moves across different projection systems, making area, scale, shape, and directional relationships visible.

<p align="center">
  <a href="https://geogeeklab.github.io/world-as-relation/">
    <img src="https://geogeeklab.github.io/world-as-relation/assets/instrument.png?v=20261012ready1" alt="World as Relation: synchronized side-by-side world map projections with local distortion measurements" width="760">
  </a>
</p>

## Explore projections

- **Projection families:** cylindrical, pseudocylindrical, azimuthal, conic, equal-area, conformal, compromise, and interrupted.
- **Projection catalog:** search projection names and select a cartographic representation.
- **Side-by-side comparison:** compare two projections with synchronized geographic position, rotation, zoom, and data layers.
- **Task presets:** select projection combinations for relative area, local shape, or visible hemisphere.
- **Graticule:** study projected meridians, parallels, poles, and interruptions.
- **Tissot indicatrices:** display reference circles and local deformation ellipses.
- **Local metrics:** inspect principal scale factors, area factor, and angular deformation at a selected geographic coordinate.
- **Interactive navigation:** rotate, pan, zoom, reset, and inspect countries or geographic events.

## Cartographic method

A geographic coordinate `(λ, φ)` maps to projected coordinates `(x, y)`. The projection Jacobian describes local changes in scale and direction. Principal scales, areal factor, and angular deformation reveal each projection's geometric behavior.

The instrument uses the [D3 geographic stack](https://github.com/d3/d3-geo-projection) and a spherical-Earth numerical Jacobian. Tissot circles, graticules, and synchronized views allow direct comparison of projection properties.

## Geographic layers

| Layer | Source | Representation |
| --- | --- | --- |
| World reference | [Natural Earth](https://www.naturalearthdata.com/downloads/) · 1:110m | Generalized land and country geometry |
| Earthquakes | [USGS](https://earthquake.usgs.gov/earthquakes/feed/) · past 24 hours | Epicentral locations |
| Natural events | [NASA EONET](https://eonet.gsfc.nasa.gov/docs/v3) | Open natural events |
| Aurora | [NOAA SWPC OVATION](https://www.spaceweather.gov/products/aurora-30-minute-forecast) | Auroral forecast field |

## Source and access

The [GeoGeek Observatory source](https://github.com/GeoGeekLab/GeoGeekLab.github.io) contains the [projection workspace](https://github.com/GeoGeekLab/GeoGeekLab.github.io/blob/main/site/world-projection-lab.js) and [local distortion model](https://github.com/GeoGeekLab/GeoGeekLab.github.io/blob/main/site/world-distortion-v12.js).

**Instrument:** https://geogeeklab.github.io/world-as-relation/  
**Lab:** https://geogeeklab.github.io/lab.html  
**Instrument record:** https://geogeeklab.github.io/records/lab-l12.html

*GeoGeek note — a projection is a spatial operator, and every operator has a geometry.*
