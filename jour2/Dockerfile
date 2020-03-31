FROM ubuntu

COPY api.py /

COPY requirements.txt /

COPY data/books.json /data/books.json

RUN apt-get -y update && \

apt-get -y install python3  && \

apt-get -y install python3-pip  && \

apt-get -y install git  && \

pip3 install --upgrade pip  && \

pip3 install -r /requirements.txt  && \

CMD ["python", "api.py"]
