FROM python:3.8-buster
RUN apt-get -y update
RUN apt-get install -y apt-utils python3-pip python3-dev && apt-get -y update
RUN pip3 install --upgrade pip
WORKDIR /app
COPY requirements.txt /app
RUN pip3 install -r requirements.txt		
ENTRYPOINT ["/bin/bash"]
