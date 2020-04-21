FROM tomcat:8-jre8

RUN rm -rf /usr/local/tomcat/webapps/*

COPY /home/travis/.m2/repository/com/wakaleo/gameoflife/gameoflife-web/1.0-SNAPSHOT/gameoflife-web-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
