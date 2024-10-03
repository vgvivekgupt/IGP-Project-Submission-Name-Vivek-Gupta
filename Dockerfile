# Use the official Tomcat image as a base
FROM tomcat:9

# Copy the WAR file to the webapps directory
COPY ABCtechnologies-1.0.war /usr/local/tomcat/webapps/

# Set the working directory (optional)
WORKDIR /usr/local/tomcat/bin

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat (this is handled by the base image)
CMD ["catalina.sh", "run"]

