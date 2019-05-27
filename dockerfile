FROM ubuntu:18.04
 
ENV KAFKA_HOME /usr/local/kafka
ADD ./start.sh /
 
RUN apt-get update && apt-get install -y \
  wget \
  openjdk-8-jdk

RUN wget https://www.apache.org/dyn/closer.cgi?path=/kafka/2.2.0/kafka_2.12-2.2.0.tgz && \
  tar -xzf kafka_2.12-2.2.0.tgz && \
  mv kafka_2.12-2.2.0 $KAFKA_HOME
 
CMD ["/start.sh"]
