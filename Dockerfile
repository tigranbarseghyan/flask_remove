FROM python:3.7.2-alpine3.8
RUN python3 -m pip install --upgrade pip 
RUN pip install flask
WORKDIR ./app
COPY . .
ENV FLASK_DEBUG=True
CMD ["python3", "./main.py"]
