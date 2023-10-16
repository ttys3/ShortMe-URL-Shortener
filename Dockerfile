FROM docker.io/library/python:3.12

WORKDIR /app

COPY requirements.txt .

RUN pip install --upgrade pip && pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5555

CMD ["python", "run.py"]
