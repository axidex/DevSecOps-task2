FROM ubuntu

RUN apt-get update && apt-get install -y \
   python3 \
   python3-pip \
   git \
   wget

# Installing Python Libs
RUN pip install requests

RUN mkdir /pod-data
RUN wget https://raw.githubusercontent.com/axidex/DevSecOps-task2/main/logger.py
RUN mv logger.py /pod-data
    
