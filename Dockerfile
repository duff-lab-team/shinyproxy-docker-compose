FROM openanalytics/shinyproxy:3.1.1

COPY application.yml /opt/shinyproxy/application.yml
COPY templates/ /opt/shinyproxy/templates/
COPY storage/img/ /opt/shinyproxy/templates/1col/assets/img/

WORKDIR /opt/shinyproxy/
USER root
CMD ["java", "-jar", "/opt/shinyproxy/shinyproxy.jar"]
