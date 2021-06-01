FROM python:3.6-slim

# Install dependencies
COPY requirements.txt /
RUN pip3 install --no-cache-dir --upgrade pip && \
    pip3 install --no-cache-dir --user -r /requirements.txt

WORKDIR /app
COPY ./app /app
ENV FLASK_APP=hello
CMD [ "python", "-m", "flask", "run", "--host=0.0.0.0", "--port=8008" ]
