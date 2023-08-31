FROM ubuntu

RUN apt-get update && apt-get install -y \
   python3 \
   python3-pip \
   git \
   wget

# Installing Python Libs
RUN pip install requests

RUN mkdir /pod-data
COPY logger.py /pod-data/logger.py