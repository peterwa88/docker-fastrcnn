This is a modified version from opencv-detect-ssd.

# docker-detect
This repo is for running images detection via MobileSSD and OpenCV-DNN in docker.

## Server
/docker-app folder contains Flask server source code to be executed in docker container

The server exposes 2 POST methods:

* /detect - accepting image, returning detections in JSON

* /ddetect - accepting image, returning image with drawn detections


Example:

__curl -X POST -F "file=@pic.jpg" host:80/ddetect --output a.jpg__

## Client
For python applications there is a client side in folder /client

## Docker
/Dockerfile is the main file to build the docker image. 

It based on Debian Stretch and includes everything required: python, OpenCV, faster_rcnn_resnet and downloads the server code from this repo.


## Video
/stream contains examples of streaming video with realtime detection via server and client from this repo.

There are 2 options:

* basic, using synchronous frames handling
* multithread, sending multiple frames to detector (The best option is to use the same number of threads as nodes in docker cluster, 10 nodes should be enough to handle realtime video without noticeable delays)

## More info




