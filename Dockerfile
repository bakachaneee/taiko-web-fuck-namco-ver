FROM ubuntu as linefix
RUN apt-get -y update
RUN apt-get -y install dos2unix
COPY . /work
RUN find /work -type f -print0 | xargs -0 dos2unix

FROM python
RUN apt-get -y update
RUN apt-get -y install ffmpeg
COPY --from=linefix /work /app
WORKDIR /app
RUN pip install -r requirements.txt
ENV PYTHONUNBUFFERED 1
CMD ["bash", "entrypoint.sh"]
