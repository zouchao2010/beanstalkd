FROM debian:wheezy
RUN apt-get update && apt-get install -y beanstalkd && apt-get clean

ENV BEANSTALKD_LISTEN_ADDR=0.0.0.0
ENV BEANSTALKD_LISTEN_PORT=11300
ENV BEANSTALKD_DATA /var/lib/beanstalkd/data
ENV DAEMON_OPTS="-l $BEANSTALKD_LISTEN_ADDR -p $BEANSTALKD_LISTEN_PORT -b $BEANSTALKD_DATA"
EXPOSE 11300
CMD ["beanstalkd"]