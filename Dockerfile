FROM python:3.11.0

WORKDIR /app/backend

COPY requirements.txt /app/backend

RUN pip install -r requirements.txt

COPY . .

EXPOSE 80

CMD python /app/backend/app.py runserver 0.0.0.0:80