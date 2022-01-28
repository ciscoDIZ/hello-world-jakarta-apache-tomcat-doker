FROM tomcat:10-jdk11-openjdk

ARG WAR_FILE=target/*.war

ADD ${ARG} /usr/local/tomcat/webapps/

EXPOSE 8082

CMD [ "catalina.sh", "run" ]