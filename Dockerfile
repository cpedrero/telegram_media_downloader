FROM python:3.6

COPY *.py /
COPY config.yaml /
COPY utils /utils

COPY requirements.txt /
RUN python3 -m pip install --upgrade pip setuptools
RUN pip3 install -r requirements.txt

CMD [ "python3", "./media_downloader.py" ]