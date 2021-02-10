FROM docker.io/ibmcom/websphere-liberty:20.0.0.5-full-java11-openj9-ubi

USER root
RUN mkdir /my-special-folder

USER 1001
COPY Dockerfile /my-special-folder/Dockerfile

COPY target/simple-stuff.war /config/dropins/

COPY config/server.xml /config/
COPY config/server.env /config/
