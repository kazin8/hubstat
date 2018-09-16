FROM python:3.5-jessie


RUN apt-get update
WORKDIR /root
RUN mkdir code
COPY ./requirements.txt ./code/
RUN cat ./code/requirements.txt
RUN pip install -qr ./code/requirements.txt

ENTRYPOINT ["python", "./code/app/server.py"]
EXPOSE 5000
