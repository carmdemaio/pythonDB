FROM python:3

RUN pip install --upgrade pip && \
    pip install --no-cache-dir nibabel pydicom matplotlib pillow && \
    pip install --no-cache-dir med2image
    pip install mysql-connector-python-rf
    pip install mysql-connector

CMD ["cat", "/etc/os-release"]

ADD helloWorld.py /
ADD database.py /
ADD check.py /

CMD [ "python", "./helloWorld.py" ]
CMD [ "python", "./database.py" ]
CMD [ "python", "./check.py" ]
