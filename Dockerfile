FROM alpine:3.7
MAINTAINER Nishant "nishant704@gmail.com"
RUN apk update && apk add python
COPY Message_app/  /Message_app
WORKDIR /Message_app
RUN pip install -r requirements.txt
CMD ["init-db.py"]
ENTRYPOINT [ "python" ]
CMD ["main.py"]
