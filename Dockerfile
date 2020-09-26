FROM python:3.8-buster
RUN apt-get -y update
RUN apt-get install -y apt-utils python3-pip python3-dev && apt-get -y update
RUN pip3 install --upgrade pip
WORKDIR /app
COPY requirements.txt /app
RUN pip3 install -r requirements.txt
ENV FLASK_ENV development
ENV FLASK_APP app.py
ENV FLASK_RUN_PORT 5000
ENV FLASK_DEBUG true		
ENTRYPOINT ["/bin/bash"]
