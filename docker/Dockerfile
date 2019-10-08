# 指定所创建镜像的基础镜像
FROM openjdk:8-jre-alpine

# 维护者
MAINTAINER nhjemail@163.com

# 创建一个数据卷挂载点
VOLUME /tmp

# 运行指定命令
RUN echo 'Asia/Shanghai' >/etc/timezone

# 指定工作目录，相当于CD命令
WORKDIR /docker

# 添加内容到镜像
COPY *.jar app.jar

# 声明镜像内服务监听的端口号，该指令只起到声明作用，不会自动完成端口映射
EXPOSE 8080

# 指定镜像的默认入口命令，该入口命令会在启动容器时作为根命令执行
ENTRYPOINT ["java","-jar","app.jar"]