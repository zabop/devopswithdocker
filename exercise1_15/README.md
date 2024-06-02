# Usage

Prepare a GeoJSON file using EPSG:4326 projection or just use the example file. Let's have the GeoJSON file at `geodata/source.geojson`. Pull the image from Docker Hub:

    docker pull zabop/tippecanoe

Create an mbtiles file:

    docker run -it --rm -v "$(pwd)/geodata:/data" zabop/tippecanoe tippecanoe --output=/data/out.mbtiles --force /data/source.geojson

Visualize result using [mbview](https://github.com/Glint-Solar/mbview):

    mbview geodata/out.mbtiles

Screenshot of result:

# History

Build for the first time:

    docker build . --tag zabop/tippecanoe

Tile dataset:

    docker run -it --rm -v "$(pwd)/geodata:/data" zabop/tippecanoe tippecanoe --output=/data/out.mbtiles --force /data/source.geojson

View result:

    mbview geodata/out.mbtiles

([More info on mbview](https://github.com/Glint-Solar/mbview))

Push to Docker Hub:

    docker push zabop/tippecanoe
