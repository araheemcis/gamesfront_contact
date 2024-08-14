FROM python:3.9.19-slim-bullseye

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install --upgrade pip
RUN pip3 install -r requirements.txt

COPY . .
EXPOSE 8000

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]