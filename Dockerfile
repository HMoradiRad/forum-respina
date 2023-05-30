FROM python:3.8

WORKDIR /app

COPY requirements.txt .

RUN apt-get update && apt-get upgrade -y
RUN pip install -r requirements.txt

COPY . .

CMD [ "python", "run.py" ]

