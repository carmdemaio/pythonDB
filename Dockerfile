FROM apt-get

RUN curl
RUN pip3 install mysql-connector

FROM python:3

ADD helloWorld.py /
ADD database.py /
ADD check.py /

CMD [ "python", "./helloWorld.py" ]
CMD [ "python", "./database.py" ]
CMD [ "python", "./check.py" ]
