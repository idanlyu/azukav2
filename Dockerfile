FROM nikolaik/python-nodejs:latest

WORKDIR /usr/src/app


COPY . .
RUN apt-get update && \
  apt-get install -y \
  neofetch \
  ffmpeg \
  wget \
  chromium \ 
  imagemagick && \
  rm -rf /var/lib/apt/lists/*

RUN set -x \
&& apt-get update 


EXPOSE 8080

CMD ["node . --db 'mongodb+srv://mongodb-bot:iCQob5VpJ7KAtUU4@cluster0.z7by1.mongodb.net/?retryWrites=true&w=majority'"]`
