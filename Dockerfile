FROM debian:wheezy
RUN apt-get update && apt-get install -y beanstalkd && apt-get clean
EXPOSE 11300
CMD ["beanstalkd", "-p", "11300"]