FROM python:3.9-alpine
WORKDIR /app
RUN wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub
RUN wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.30-r0/glibc-2.30-r0.apk
RUN wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.30-r0/glibc-bin-2.30-r0.apk
RUN apk add glibc-2.30-r0.apk
RUN apk add glibc-bin-2.30-r0.apk
RUN apk add firefox 
RUN wget https://github.com/mozilla/geckodriver/releases/download/v0.28.0/geckodriver-v0.28.0-linux64.tar.gz
RUN tar -zxf geckodriver-v0.28.0-linux64.tar.gz -C /usr/bin
RUN python -m pip install pipenv
COPY . .
RUN pipenv install
ARG url
ENV URL $url
CMD [ "sh", "-c", "pipenv run robot --variable URL:${URL} ./main.robot" ]
