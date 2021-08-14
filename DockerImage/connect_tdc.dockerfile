FROM confluentinc/cp-kafka-connect:6.1.0

MAINTAINER Deyvid Fernandes - Kafka Connect

ENV CONNECT_BOOTSTRAP_SERVERS=http://localhost:9092
ENV CONNECT_REST_ADVERTISED_HOST_NAME=connect
ENV CONNECT_REST_PORT=8083
ENV CONNECT_GROUP_ID=compose-connect-group
ENV CONNECT_CONFIG_STORAGE_TOPIC=kafka-connect-configs
ENV CONNECT_OFFSET_STORAGE_TOPIC=kafka-connect-offsets
ENV CONNECT_STATUS_STORAGE_TOPIC=kafka-connect-status
ENV CONNECT_CONFIG_STORAGE_REPLICATION_FACTOR=1
ENV CONNECT_OFFSET_STORAGE_REPLICATION_FACTOR=1
ENV CONNECT_STATUS_STORAGE_REPLICATION_FACTOR=1
ENV CONNECT_KEY_CONVERTER=org.apache.kafka.connect.json.JsonConverter
ENV CONNECT_VALUE_CONVERTER=org.apache.kafka.connect.json.JsonConverter
ENV CONNECT_INTERNAL_KEY_CONVERTER=org.apache.kafka.connect.json.JsonConverter
ENV CONNECT_INTERNAL_VALUE_CONVERTER=org.apache.kafka.connect.json.JsonConverter
ENV CONNECT_LOG4J_ROOT_LOGLEVEL=INFO

RUN confluent-hub install --no-prompt streamthoughts/kafka-connect-file-pulse:1.5.0
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-aws-dynamodb:1.2.0
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-s3:10.0.1
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-s3-source:1.4.6

RUN mkdir -p /home/appuser/tmp/files/directory/
RUN mkdir -p /home/appuser/tmp/files/succeed/
RUN mkdir -p /home/appuser/tmp/files/failed/
