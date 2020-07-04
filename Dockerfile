FROM tomcat:8.5.56-jdk8-openjdk

#ADD sample.war /usr/local/tomcat/webapps/
# Extra message

WORKDIR /usr/local/tomcat/webapps/
#RUN curl -O -L https://github.com/AKSarav/SampleWebApp/raw/master/dist/SampleWebApp.war
RUN rm -rf *
RUN curl -L https://github.com/yuriartem/application-example/raw/master/webExample-1.0.war > ROOT.war
EXPOSE 8080

CMD ["catalina.sh", "run"]
