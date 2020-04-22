FROM tomcat:8-jre8

RUN rm -rf /usr/local/tomcat/webapps/*

#COPY /home/travis/build/rghorpade80/travis_ci_demo/gameoflife-web/target/gameoflife.war /usr/local/tomcat/webapps/ROOT.war
COPY . .

EXPOSE 8080
CMD ["catalina.sh", "run"]
