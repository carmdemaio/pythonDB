FROM python:3

ADD database.py /
ADD check.py

RUN pip install pystrich

CMD [ "python", "./database.py" ]
CMD [ "python", "./check.py" ]
