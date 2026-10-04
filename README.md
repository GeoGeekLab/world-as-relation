# World as Relation

**Map projection · distortion tensor · graticule · Tissot indicatrix · thematic overlay**

*WORLD AS RELATION* is a cartographic and GIScience instrument for studying how geographic coordinates are transformed into planar representations. It treats map projection as an explicit spatial operator that maps longitude–latitude coordinates **(λ, φ)** into planar coordinates **(x, y)**, then exposes the geometric consequences of that transformation through graticules, Tissot indicatrices, interactive rotation and zoom, and contemporary geospatial layers.

<p align="center">
  <a href="https://geogeeklab.github.io/world-as-relation/">
    <img src="https://geogeeklab.github.io/world-as-relation/assets/instrument.png" alt="World as Relation instrument" width="720">
  </a>
</p>

## Cartographic framework

Every projection redistributes geometric properties when positions on the reference globe are represented in a plane. The local behavior of a projection can be described through the differential of the coordinate transformation: scale factors vary by position and direction, producing changes in area, angle, shape, distance, and azimuth.

Tissot indicatrices provide a local diagnostic of this deformation by visualizing how infinitesimal circles on the globe become ellipses in projected space. Their principal axes express directional scale variation, while changes in ellipse area and eccentricity reveal areal and angular distortion. Graticules expose the global transformation of meridians and parallels, making singularities, polar behavior, edge discontinuities, and continuity properties directly visible.

The production runtime uses the D3 geographic stack, including [`d3-geo-projection`](https://github.com/d3/d3-geo-projection), to compare multiple projection families within one interaction model.

## Geospatial reference layers

| Layer | Source | Spatial role |
| --- | --- | --- |
| Land geometry | [Natural Earth](https://www.naturalearthdata.com/downloads/) 1:110m | Generalized global reference geometry for projection comparison |
| Earthquakes | [USGS Earthquake Hazards Program](https://earthquake.usgs.gov/earthquakes/feed/) rolling past-24-hour feed | Georeferenced point-event distribution |
| Active natural events | [NASA Earth Observatory Natural Event Tracker (EONET)](https://eonet.gsfc.nasa.gov/docs/v3) | Event-based Earth-system context |
| Aurora | [NOAA Space Weather Prediction Center (SWPC) OVATION auroral products](https://www.swpc.noaa.gov/products/aurora-30-minute-forecast) | Time-varying geophysical forecast field |

These layers introduce point, event, polygonal-reference, and field-like spatial structures into the same projection environment. Because each layer occupies a different spatial support, projection distortion can be evaluated against actual geographic distributions rather than abstract geometry alone.

## Projection analysis

*WORLD AS RELATION* supports comparative inspection of projection families such as cylindrical, pseudocylindrical, azimuthal, and compromise projections. The analytical emphasis is not on selecting one universal map, but on examining the relationship between projection properties and the task being performed.

For thematic cartography, this distinction is consequential. Area-preserving behavior affects choropleth and density interpretation; angular deformation affects local shape; polar and edge behavior influence global pattern recognition; and central-meridian or rotation choices alter which spatial relations receive visual emphasis.

The instrument therefore connects mathematical cartography with geovisualization, thematic mapping, global spatial analysis, and projection literacy.

## Instrument access

**Live instrument:** https://geogeeklab.github.io/world-as-relation/

*WORLD AS RELATION* is a public entrypoint to the production projection laboratory maintained in [`GeoGeekLab/GeoGeekLab.github.io`](https://github.com/GeoGeekLab/GeoGeekLab.github.io). [`SOURCE.json`](./SOURCE.json) records the pinned upstream revision, and [`PRODUCTION.md`](./PRODUCTION.md) specifies data provenance, projection behavior, and deployment conditions.

*GeoGeek note — a projection is a spatial operator, and every operator has a geometry.*
