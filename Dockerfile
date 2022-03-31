FROM registry.access.redhat.com/ubi8/python-39

WORKDIR /application

COPY upbad/ .
COPY upbad/* upbad/
COPY requirements.txt .

RUN pip install -r requirements.txt
ENV FLASK_APP=upbad/main.py

EXPOSE 12345

CMD ["flask", "run", "--host", "0.0.0.0", "--port", "12345"]
