FROM ubuntu:latest
RUN apt-get update -y && apt-get install -y python-pip python-dev build-essential
COPY . /app
WORKDIR /app
RUN pip install --upgrade pip && pip install flask
ENTRYPOINT [ "python" ]
CMD ["main.py"]