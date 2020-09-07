FROM openjdk:11-jre-slim

LABEL maintainer="ejsvk3284@kakao.com"

#연결할 volume
VOLUME /tmp

#8080 포트로 노출
EXPOSE 8080

#환경변수 추가
ARG JAR_FILE=build/libs/*.jar

#server-user.jar로 COPY
COPY ${JAR_FILE} server-user.jar

ENTRYPOINT ["java","-jar","/server-user.jar"]