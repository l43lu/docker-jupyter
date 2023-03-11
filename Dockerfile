FROM ubuntu:20.04

RUN apt update
RUN apt install software-properties-common -y
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt update

RUN apt install python3.9 -y
RUN apt install python3-pip -y

RUN pip install jupyterlab==3.0.17

CMD jupyter-lab --allow-root



