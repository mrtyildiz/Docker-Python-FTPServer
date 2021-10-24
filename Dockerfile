FROM python:3.9

RUN apt install
RUN apt update -y
RUN apt upgrade -y

RUN pip3 install pyftpdlib

COPY APP/ /opt/

WORKDIR /opt/APP/
RUN /bin/bash start.sh &
