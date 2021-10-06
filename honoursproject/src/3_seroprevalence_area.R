library(geojsonio)
spdf <- geojson_read("https://github.com/missinglink/uk-postcode-polygons/blob/3ed09a81d4daa32f723bad1f2fdf4bfee6bb7ac0/geojson/G.geojson",  what = "sp")