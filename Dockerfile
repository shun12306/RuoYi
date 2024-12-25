# 使用支持 Java 17 的官方基础镜像
FROM registry.cn-shenzhen.aliyuncs.com/library/openjdk:17-jdk-slim

# 设置容器的工作目录
WORKDIR /app

# 将项目的 JAR 文件复制到容器中
COPY ruoyi-admin/target/ruoyi-admin.jar app.jar

# 暴露容器的运行端口（根据你的 Spring Boot 配置调整，通常是 8080）
EXPOSE 80

# 指定容器启动时运行的命令
ENTRYPOINT ["java", "-jar", "app.jar"]
LABEL authors="shun"