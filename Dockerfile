#MAINTAINER root
FROM jboss/wildfly:latest
ADD target/Samplewebapp.war /opt/jboss/wildfly/standalone/deployments/
RUN /opt/jboss/wildfly/bin/add-user.sh admin admin --silent
ENTRYPOINT /bin/bash
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"] 
