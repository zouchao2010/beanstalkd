FROM debian:wheezy
RUN apt-get update && apt-get install -y beanstalkd && apt-get clean

VOLUME ["/beanstalkd_data"]

EXPOSE 11300
CMD ["beanstalkd", "-p", "11300", "-b", "/beanstalkd_data"]