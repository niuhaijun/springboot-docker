#! /bin/bash

# 镜像版本号、名称、容器名称
image_name='springboot-docker'
image_tag=`date '+%Y%m%d%H%M%S'`
container_name=${image_name}

# 停止容器
docker container stop ${container_name}

# 删除容器
docker container rm ${container_name}

# 删除本地镜像
docker rmi -f `docker images | grep ${image_name} | awk '{print $3}'`

# 删除目录中的jar
rm -f app.jar

# 进入项目根目录进行编译
cd ..
mvn clean package -DskipTests=true
mv target/*.jar docker/app.jar
mvn clean

# 构建docker镜像
cd docker
docker build -t ${image_name}:${image_tag} .