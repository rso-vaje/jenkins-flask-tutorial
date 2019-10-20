FROM ubuntu:latest
MAINTAINER Leon "leon@gmail.com"

RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential

ADD ./flask-app /flask-app
ADD ./requirements.txt /flask-app/requirements.txt
WORKDIR /flask-app
RUN pip install -r requirements.txt

ENTRYPOINT ["python"]
CMD ["flask-docker.py"]

