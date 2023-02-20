FROM python
COPY . /app
WORKDIR /app
RUN apt-get -y update
RUN apt-get -y install ffmpeg
RUN pip install -r requirements.txt
ENV PYTHONUNBUFFERED 1
CMD ["bash", "entrypoint.sh"]
