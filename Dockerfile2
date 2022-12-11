FROM confluentinc/cp-kafka-connect:5.4.9-1-ubi8
USER root
RUN mkdir -p /ssl
RUN mkdir -p /ssl/es-certificates
COPY cert/ca.crt /ssl/es-certificates/ca.crt
COPY cert/ca.crt /ssl/es-certificates/KConnect.crt
COPY cert/cert.sh /home
RUN chown appuser:appuser /ssl/es-certificates
RUN /home/cert.sh