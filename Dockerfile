FROM python:3.9-alpine

WORKDIR /app

RUN apk add --no-cache postgresql-dev gcc python3-dev musl-dev postgresql-client

COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

COPY . /app/
RUN chmod +x wait-for-postgres.sh

EXPOSE 5000

CMD ["./wait-for-postgres.sh", "python", "app.py"]