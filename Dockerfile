FROM ubuntu:16.04
LABEL maintainer="Sufiyan Sayyed <sayyed.sufiyan@eclerx.com>"

RUN apt-get update
RUN apt-get install -y python3 python3-dev python3-pip nginx

COPY ./ ./app
WORKDIR ./app

RUN pip3 install -r requirements.txt
RUN python3 --version
RUN echo "Dependencies Installed Successfully"


EXPOSE 8876

CMD [ "python3","main.py" ]
