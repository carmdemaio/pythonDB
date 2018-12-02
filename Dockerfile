FROM python:3

ADD database.py /
ADD check.py /

CMD [ "python", "./database.py" ]
CMD [ "python", "./check.py" ]
