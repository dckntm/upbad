FROM python:3.7.8

WORKDIR /upbad

COPY upbad .
COPY requirements.txt .

RUN pip install -r requirements.txt
ENV FLASK_APP=upbad/main.py

EXPOSE 12345

CMD ["flask", "run", "--host", "0.0.0.0", "--port", "12345"]
