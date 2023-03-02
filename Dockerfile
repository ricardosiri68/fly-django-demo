FROM python:3.10.6

ENV PYTHONPATH=/app
WORKDIR app/

ADD requirements.txt /app/requirements.txt
ADD fly /app/fly
ADD manage.py /app/manage.py
ADD entrypoint.sh /app/entrypoint.sh

RUN chmod +x manage.py entrypoint.sh
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
