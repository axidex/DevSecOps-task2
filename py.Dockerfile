FROM python

RUN apt-get update && apt-get install -y \
   python3 \
   python3-pip \
   wget

RUN apt-get install -y \
   curl

# Installing Python Libs
RUN pip install requests
RUN useradd -u 1001 testuser
RUN touch decoded.txt

USER testuser

COPY logger.py .