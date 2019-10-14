FROM python:3.7.3-stretch

WORKDIR /app
COPY . /app

RUN pip3 install -r /app/requirements.txt && rm -rf /root/.cache
# hadolint ignore=DL3013

EXPOSE 80   

CMD [ "python3", "app.py" ]
