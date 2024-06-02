Build for the first time:

    docker build . --tag zabop/tippecanoe

Tile dataset:

    docker run -it --rm -v "$(pwd)/geodata:/data" zabop/tippecanoe tippecanoe --output=/data/out.mbtiles --force /data/source.geojson

View:

    mbview geodata/out.mbtiles

([More info on mbview](https://github.com/Glint-Solar/mbview))
