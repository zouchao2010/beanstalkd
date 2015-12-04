# beanstalkd


## build
```shell
docker build -t zouchao2010/beanstalkd .

```

## pull
```shell
docker pull zouchao2010/beanstalkd

```
  
## run(创建并运行一个容器，退出时删除容器)
```shell
docker run  --name beanstalkd \
            -h beanstalkd \
            -p 11300:11300 \
            -v /data/beanstalkd:/var/lib/beanstalkd/data \
            -it --rm zouchao2010/beanstalkd
            
```

## run(创建并运行一个容器，以守护进程方式)
```shell
docker run  --name beanstalkd \
            --restart=always \
            -h beanstalkd \
            -p 11300:11300 \
            -v /data/beanstalkd:/var/lib/beanstalkd/data \
            -dt zouchao2010/beanstalkd
            
```

## start|stop|restart(已存在的容器)
```shell
docker start|stop|restart beanstalkd

```

## exec(使用已运行的容器执行命令)
```shell
docker exec -it beanstalkd /bin/bash

```
