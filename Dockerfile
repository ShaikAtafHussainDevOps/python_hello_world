FROM python:3.11.0

WORKDIR /app/backend

COPY requirements.txt

RUN pip install -r requirements.txt

COPY . /app/backend

EXPOSE 5000

CMD python /app/backend/app.py runserver 0.0.0.0:5000