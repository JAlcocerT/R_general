## R_Maps: 
Contains explanation and examples on how to graph the world in R
  * rnaturalearth: <https://cran.r-project.org/web/packages/rnaturalearth/README.html>
  * maptools
  * rworldmap
  
  * geojson -  
  1. same info that in a shp file, but in a single file as file
  2. it can work with [mapping API's](https://www.pubnub.com/learn/glossary/what-is-a-map-api/), Leaftlet,Google,Openlayers,GQIS,PostGIS
  3. type: Points / MultiPoint / LineString / MultiLineString / Polygon / MultiPolygon
  4. its design to represent geographical elements together with spacial attributes
  5. Example:

    {"type":"Feature",
     "geometry":{
       "type": "Point",
       "coordinates": [125.6,10.1]
       },
      "properties": {
        "name": "Island green"
       }
    }
  * topojson


  * shapefiles (SHP)
  1. https://www.diva-gis.org/gdata
  2. 
  
  * gdv
  * svg


### Data sources

<https://ec.europa.eu/eurostat/web/gisco/geodata/reference-data/> ---> Local Administrative Units (LAU) 2019
