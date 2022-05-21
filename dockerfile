FROM python:latest

SHELL ["/bin/bash", "-c"]

RUN apt update
RUN apt install -y libnss3

RUN pip install beautifulsoup4 selenium requests

RUN cd /tmp/
RUN curl -O https://chromedriver.storage.googleapis.com/102.0.5005.27/chromedriver_linux64.zip
RUN unzip chromedriver_linux64.zip

RUN mv chromedriver /usr/local/bin
RUN rm chromedriver_linux64.zip
