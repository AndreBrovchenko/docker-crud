FROM python:3
WORKDIR /stocks_products
COPY . .
RUN apt-get update
RUN pip install -r requirements.txt
ENTRYPOINT bash run.sh
