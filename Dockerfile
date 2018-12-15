FROM python:3

RUN pip install --upgrade pip
RUN pip install --no-cache-dir nibabel pydicom matplotlib pillow
RUN pip install --no-cache-dir med2image
RUN pip install mysql-connector-python-rf
RUN pip install mysql-connector

CMD ["cat", "/etc/os-release"]

ADD helloWorld.py /
ADD database.py /
ADD check.py /

CMD [ "python", "./helloWorld.py" ]
