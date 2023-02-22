FROM python
COPY . /app
WORKDIR /app
RUN apt-get -y update
RUN apt-get -y install ffmpeg dos2unix
RUN find . -type f -print0 | xargs -0 dos2unix
RUN pip install -r requirements.txt
ENV PYTHONUNBUFFERED 1
CMD ["bash", "entrypoint.sh"]
