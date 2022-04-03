FROM registry.access.redhat.com/ubi8/python-39

# copy requirements as root user
USER 0
COPY /requirements.txt /etc

# install dependencies from requirements.txt
RUN python -m pip install --upgrade pip
RUN python -m pip install -r /etc/requirements.txt

# copy source code
COPY --chown=1001 ./upbad /opt/app-root/src/upbad

USER 1001

EXPOSE 8080

CMD gunicorn upbad.wsgi
