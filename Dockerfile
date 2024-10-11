#Java version
FROM openjdk:11-jdk

#ADMIN ADDRESS
LABEL maintainer="kodh10@gmail.com"

#JAR_FILE 변수지정
ARG JAR_FILE=build/libs/activity-project-0.0.1-SNAPSHOT.jar

#Docker 내 실행명
ADD ${JAR_FILE} docker-springboot.jar

#SpringBoot ENV
#local 전용
#ENV SPRING_PROFILES_ACTIVE=local
#ENV SPRING_DATASOURCE_URL=jdbc:log4jdbc:mysql://host.docker.internal:3306/KORMAP?useLocalSessionState=true&useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull

#EC2(dev) 전용
ENV SPRING_PROFILES_ACTIVE=dev
ENV SPRING_DATASOURCE_URL=jdbc:log4jdbc:mysql://localhost:3306/KORMAP?useLocalSessionState=true&useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull

# local,dev common
ENV SPRING_DATASOURCE_USERNAME=kormap
ENV SPRING_DATASOURCE_PASSWORD=kodh8871

#Docker 컨테이너 실행 시 실행될 명령어
ENTRYPOINT ["java", "-jar", "docker-springboot.jar"]