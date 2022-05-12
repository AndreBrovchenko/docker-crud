FROM python:3
WORKDIR /stocks_products
COPY . .
RUN apt-get update
RUN pip install -r requirements.txt
# EXPOSE 8000
CMD ["python", "manage.py", "migrate"]
CMD ["python", "manage.py", "runserver"]
