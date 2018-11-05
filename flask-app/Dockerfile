FROM alpine:3.7
MAINTAINER Nishant "nishant704@gmail.com"
RUN apk add --update \
    python \
    py-pip \
&& rm -rf /var/cache/apk/*
COPY Message_app/  /Message_app
WORKDIR /Message_app
RUN pip install -r requirements.txt
EXPOSE 5000
COPY start.sh start.sh 
CMD ["./start.sh"]
