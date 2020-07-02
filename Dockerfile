FROM tomcat:8.0.50

#ADD sample.war /usr/local/tomcat/webapps/
# Extra message

WORKDIR /usr/local/tomcat/webapps/
RUN curl -O -L https://github.com/AKSarav/SampleWebApp/raw/master/dist/SampleWebApp.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
