FROM ubuntu

RUN apt-get update && apt-get install -y \
   python3 \
   python3-pip \
   git \
   wget

RUN apt-get install -y \
   curl

# Installing Python Libs
RUN pip install requests

RUN mkdir /pod-data
COPY logger.py .
RUN mv logger.py /pod-data
    
