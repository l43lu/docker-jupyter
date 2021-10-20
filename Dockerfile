FROM ubuntu:18.04

RUN apt update
RUN apt install software-properties-common -y
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt update

RUN apt install python3.8 -y
RUN apt install python3-pip -y

RUN pip3 install jupyterlab

CMD jupyter-lab --allow-root



