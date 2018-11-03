FROM alpine:3.7
MAINTAINER Nishant "nishant704@gmail.com"
RUN apk add --update \
    python \
    python-dev \
    py-pip \
    build-base \
&& rm -rf /var/cache/apk/*
COPY Message_app/  /Message_app
WORKDIR /Message_app
RUN pip install -r requirements.txt
CMD ["init-db.py"]
EXPOSE 5000
ENTRYPOINT [ "python" ]
CMD ["main.py"]
