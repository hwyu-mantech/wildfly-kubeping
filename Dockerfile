FROM jboss/wildfly:20.0.1.Final
LABEL MAINTAINER bskim <bskim@mantech.co.kr>

ADD config-wildfly.cli /opt/jboss/
ADD cluster.war /opt/jboss/wildfly/standalone/deployments/

RUN /opt/jboss/wildfly/bin/add-user.sh admin accordion --silent \
    && /opt/jboss/wildfly/bin/jboss-cli.sh --file=config-wildfly.cli \
    && rm -Rf /opt/jboss/wildfly/standalone/configuration/standalone_xml_history/*

EXPOSE 8080 9990 7600 8888