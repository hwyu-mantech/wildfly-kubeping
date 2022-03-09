FROM jboss/wildfly:25.0.0.Final
LABEL MAINTAINER hwyu <hwyu@mantech.co.kr>

ADD config-wildfly.cli /opt/jboss/
ADD cluster.war /opt/jboss/wildfly/standalone/deployments/

RUN /opt/jboss/wildfly/bin/add-user.sh admin accordion --silent \
    && /opt/jboss/wildfly/bin/jboss-cli.sh --file=config-wildfly.cli \
    && rm -Rf /opt/jboss/wildfly/standalone/configuration/standalone_xml_history/*

EXPOSE 8080 9990 7600 8888
