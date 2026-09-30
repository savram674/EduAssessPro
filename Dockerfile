FROM tomcat:9.0-jdk11

# RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your WAR into Tomcat webapps directory
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
