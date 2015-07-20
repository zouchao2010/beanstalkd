FROM debian:wheezy
RUN apt-get update && apt-get install -y beanstalkd && apt-get clean

ENV BEANSTALKD_DATA /var/lib/beanstalkd/data
EXPOSE 11300
CMD ["beanstalkd", "-p", "11300", "-b", $BEANSTALKD_DATA]