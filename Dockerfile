FROM tomcat:8-jre8

RUN rm -rf /usr/local/tomcat/webapps/*
WORKDIR /usr/local/tomcat/webapps/

#COPY /home/travis/build/rghorpade80/travis_ci_demo/gameoflife-web/target/gameoflife.war /usr/local/tomcat/webapps/ROOT.war
#ADD $TRAVIS_BUILD_DIR/rghorpade80/travis_ci_demo/* .
##COPY gameoflife-web/target/gameoflife.war /usr/local/tomcat/webapps/ROOT.war
COPY /home/travis/mycache/gameoflife.war /usr/local/tomcat/webapps/ROOT.war
#COPY . .
#COPY --from=builder ./gameoflife-web/target/gameoflife.war  /usr/local/tomcat/webapps/ROOT.war
#COPY $TRAVIS_BUILD_DIR/target/gameoflife.war  /usr/local/tomcat/webapps/ROOT.war
#RUN mv /usr/local/tomcat/webapps/gameoflife-web/target/gameoflife.war /usr/local/tomcat/webapps/ROOT.war
#RUN mv /usr/local/tomcat/webapps/target/gameoflife.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080

CMD ["catalina.sh", "run"]
