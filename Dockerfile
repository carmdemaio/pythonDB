RUN apt-get update && apt-get install -y \
    aufs-tools \
    automake \
    build-essential \
    curl \
    dpkg-sig \
    libcap-dev \
    libsqlite3-dev \
    mercurial \
    python3.6 \ 
    s3cmd=1.1.* \
 && rm -rf /var/lib/apt/lists/*

FROM python:3

ADD database.py /
ADD check.py /

CMD [ "python", "./database.py" ]
CMD [ "python", "./check.py" ]
