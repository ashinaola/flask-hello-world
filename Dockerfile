FROM python:latest

WORKDIR /app

COPY requirements.txt requirements.txt

#RUN apt-get update
#RUN apt-get install -y python3 python3-pip

RUN pip install -r requirements.txt

COPY . .

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]