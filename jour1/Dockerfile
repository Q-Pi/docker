FROM ubuntu

WORKDIR /workspace

COPY requirements.txt /

RUN apt-get -y update && \
apt-get -y install python3  && \
apt-get -y install python3-pip  && \
apt-get -y install vim  && \
apt-get -y install git  && \
pip3 install --upgrade pip  && \
pip3 install -r /requirements.txt  && \
git config --global user.name JohnSmith  && \
git config --global user.email john.smith@mail.com  && \
git clone https://github.com/Q-Pi/docker.git

EXPOSE 8080

CMD ["jupyter", "notebook", "--ip=127.0.0.1", "--port=8888", "--allow-root", "--no-browser"]
