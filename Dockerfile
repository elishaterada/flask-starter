FROM python:3.7.2

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r ./requirements.txt

ADD . /usr/src/app

ENTRYPOINT ["python"]
CMD ["app.py"]
