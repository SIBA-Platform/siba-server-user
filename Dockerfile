FROM openjdk:11-jre-slim

LABEL maintainer="ejsvk3284@kakao.com"

WORKDIR /root

#연결할 volume
VOLUME /tmp

#8080 포트로 노출
EXPOSE 8080

#환경변수 추가
ARG JAR_FILE=build/libs/server-user-0.0.1-SNAPSHOT.jar

COPY ${JAR_FILE} server-user.jar

ENTRYPOINT ["java","-jar","/server-user.jar"]