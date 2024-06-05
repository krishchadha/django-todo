FROM python:3
RUN apt-get update 
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY . /code/
EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
