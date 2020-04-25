FROM tomcat:8-jre8

RUN rm -rf /usr/local/tomcat/webapps/*
WORKDIR /usr/local/tomcat/webapps/

##COPY gameoflife-web/target/gameoflife.war /usr/local/tomcat/webapps/ROOT.war
COPY gameoflife.war /usr/local/tomcat/webapps/ROOT.war
###COPY . .
###RUN mv /usr/local/tomcat/webapps/gameoflife-web/target/gameoflife.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
