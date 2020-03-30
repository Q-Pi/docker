FROM ubuntu

WORKDIR /workspace

COPY requirements.txt /

RUN apt-get -y update

RUN apt-get -y install python3

RUN apt-get -y install python3-pip

RUN apt-get -y install vim

RUN apt-get -y install git

RUN pip3 install --upgrade pip

RUN pip3 install -r /requirements.txt

RUN git config --global user.name JohnSmith

RUN git config --global user.email john.smith@mail.com

RUN git clone https://github.com/Q-Pi/docker.git

EXPOSE 8080

CMD ["jupyter", "notebook", "--ip=127.0.0.1", "--port=8888", "--allow-root", "--no-browser"]
