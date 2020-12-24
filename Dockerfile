FROM python:3.7-stretch

RUN pip3 install flask
RUN pip3 install protobuf
RUN pip3 install requests
RUN pip3 install opencv_python
RUN apt update
RUN apt install -y libgl1-mesa-glx

ADD http://download.tensorflow.org/models/object_detection/faster_rcnn_resnet50_coco_2018_01_28.tar.gz /
RUN tar -xvf /faster_rcnn_resnet50_coco_2018_01_28.tar.gz

ADD https://github.com/peterwa88/docker-fastrcnn/archive/main.zip /
RUN unzip /main.zip

EXPOSE 80

#CMD ["python3", "/docker-fastrcnn-main/detect-app/dnn_ctrl.py", "/docker-fastrcnn-main/detect-app/data/pic.jpg"]
CMD ["python3", "/docker-fastrcnn-main/detect-app/app.py"]
