FROM openjdk:alpine

RUN echo "Asia/Shanghai" > /etc/timezone
#RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
ENV TZ=Asia/Shanghai


ADD target/demo.war /root/bin/demo.war

WORKDIR /root/bin

EXPOSE 8080

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","demo.war"]