FROM python:3.6-slim

# Install dependencies
COPY requirements.txt /
RUN pip3 install --no-cache-dir --upgrade pip && \
    pip3 install --no-cache-dir --user -r /requirements.txt && \
    rm -rf /root/.cache/* && \
    rm -rf /root/.config/pip

WORKDIR /app
COPY ./app /app
ENV TZ=Asia/Shanghai \
    FLASK_APP=hello
