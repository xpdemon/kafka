if [ -d /ssl/es-certificates/ ]; then
      echo "Preparing truststore for connectors"
      # Add each certificate to the trust store \
      mkdir -p /home/kafka
      STORE=/home/kafka/truststore.jks
      declare -i INDEX=0
      for CRT in /ssl/es-certificates/*.crt; do
        keytool -keystore $STORE -storepass "changeme" -noprompt -import -file $CRT -storetype JKS
        INDEX+=1
      done
      echo "Preparing truststore for connectors is complete"
    fi