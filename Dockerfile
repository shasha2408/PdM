FROM python:3.7



COPY requirements.txt .

RUN pip install -r requirements.txt


COPY ./app /app

WORKDIR /app

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "1234"]





