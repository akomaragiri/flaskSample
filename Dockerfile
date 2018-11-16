FROM ubuntu:latest

RUN apt-get update -y && \
	apt-get install -y python-pip python-dev build-essential
	
RUN pip install -r requirements.txt

RUN mkdir /app
	
COPY . /app

WORKDIR /app

EXPOSE 5000

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]