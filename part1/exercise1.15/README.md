# Usage

Prepare a GeoJSON file using EPSG:4326 projection or just use [an example file](https://raw.githubusercontent.com/zabop/devopswithdockerpart1/master/exercise1_15/geodata/source.geojson). Let's have the GeoJSON file at `geodata/source.geojson`. Pull the image from Docker Hub:

    docker pull zabop/tippecanoe

Create an mbtiles file:

    docker run -it --rm -v "$(pwd)/geodata:/data" zabop/tippecanoe tippecanoe --output=/data/out.mbtiles --force /data/source.geojson

Visualize [result](https://github.com/zabop/devopswithdockerpart1/blob/master/exercise1_15/geodata/out.mbtiles) using [mbview](https://github.com/Glint-Solar/mbview):

    mbview geodata/out.mbtiles

Screenshot of result:

![](https://raw.githubusercontent.com/zabop/devopswithdockerpart1/master/exercise1_15/result.png)

---

The image was built and pushed to Docker Hub via:

    docker build . --tag zabop/tippecanoe
    docker push zabop/tippecanoe
