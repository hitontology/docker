FROM maven:3-jdk-8 AS builder
WORKDIR /app
RUN wget --no-verbose https://github.com/hitontology/lodview/archive/refs/heads/master.zip \
 && unzip -q master.zip \
 && mv lodview-master/* . \
 && ls lodview-master \
 && rm -rf lodview-master \
 && rm master.zip
RUN mvn -B -q compile war:war

FROM tomcat:9-jre8-slim
COPY --from=builder /app/target/lodview.war /usr/local/tomcat/webapps/ontology.war
COPY logging.properties /usr/local/tomcat/conf
EXPOSE 8080
