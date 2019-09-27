FROM openjdk:8-alpine
LABEL maintainer="Ana Maria Lucatti Santos <analucatti23@gmail.com>"

COPY ./target/aplicacaofinanceira-0.0.1-SNAPSHOT.jar /opt/ufscar/dc/servico.jar

ENV DB 192.168.99.100
ENV DBNAME ufscar
EXPOSE 8080

CMD ["java", "-jar", "/opt/ufscar/dc/servico.jar","--spring.datasource.url=jdbc:postgresql://${DB}:5432/${DBNAME}"]

