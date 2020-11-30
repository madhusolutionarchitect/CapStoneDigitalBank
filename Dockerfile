#FROM openjdk
FROM tomcat:8.0.51-jre8-alpine
RUN rm -rf /usr/local/tomcat/webapps/*
COPY ./digitalbank-2.1.0.local.war /usr/local/tomcat/webapps/ROOT.war
CMD ["catalina.sh","run"]