RUN apt-get update && apt-get install -y \
    aufs-tools \
    automake \
    build-essential \
    curl \
    dpkg-sig \
    libsqlite3-dev \
    mercurial \
    python3.6 \ 
    python3-pip \
    s3cmd=1.1.* \
 && rm -rf /var/lib/apt/lists/*
 
 RUN pip3 install mysql-connector

FROM python:3

ADD helloWorld.py /
ADD database.py /
ADD check.py /

CMD [ "python", "./helloWorld.py" ]
CMD [ "python", "./database.py" ]
CMD [ "python", "./check.py" ]
