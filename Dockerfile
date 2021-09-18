FROM python:3.8-slim-buster

WORKDIR /usr/src/app/

RUN apt-get update \
    && apt-get install -y \
        gcc

COPY src/requirements.txt /usr/src/app/
RUN pip install -r requirements.txt

COPY src/ /usr/src/app/

EXPOSE 9080

CMD ["python", "productpage.py", "9080"]
