# docker-flask

A dockerfile to create an image containing python3 with flask and some usefull libraries based on buster 3.8
useful for getting up and running quickly with flask



create a folder called "app" in your working directory and run with "docker run --rm -p 5000:5000 -v "$(pwd)"/app/:/app -it flask:1.1.2"
