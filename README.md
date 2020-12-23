This is a modified version from opencv-detect-ssd.

## Server
/docker-app folder contains Flask server source code to be executed in docker container

The server exposes 2 POST methods:

* /detect - accepting image, returning detections in JSON

* /ddetect - accepting image, returning image with drawn detections


Example:

__curl -X POST -F "file=@pic.jpg" host:80/ddetect --output a.jpg__

## More info




