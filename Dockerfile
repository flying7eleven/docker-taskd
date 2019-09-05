FROM alpine:latest
MAINTAINER Tim Hütz <tim@huetz.biz>

RUN	apk -U --no-progress upgrade && \
	apk -U --no-progress add taskd taskd-pki

COPY container/ /app/taskd/

EXPOSE 53589
ENTRYPOINT ["/app/taskd/run.sh"]
