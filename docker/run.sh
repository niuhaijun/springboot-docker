#! /bin/bash

# 镜像版本号、名称、容器名称
image_name='springboot-docker'
image_tag=`docker images | grep ${image_name} | awk '{print $2}'`
container_name=${image_name}


# 运行容器
docker run \
	-d \
	-i \
	-t \
	--name ${container_name} \
	-p 18080:8080 \
	--net fixip \
	--ip 192.168.0.29 \
	${image_name}:${image_tag}