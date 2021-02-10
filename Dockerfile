FROM docker.io/ibmcom/websphere-liberty:20.0.0.5-full-java11-openj9-ubi
USER root
COPY target/simple-stuff.war /config/dropins/
mkdir -p /my-special-folder
chmod +x /my-special-folder
COPY Dockerfile /my-special-folder
COPY config/server.xml /config/
COPY config/server.env /config/
