# Version: 0.0.1
FROM dockerfile/java:oracle-java8
MAINTAINER Paul Ambrose "pambrose@mac.com"

ADD http://downloads.haptava.io/releases/0.9.39/log4j/shell.log4j.properties /haptava/log4j/
ADD http://downloads.haptava.io/releases/0.9.39/jars/shell.jar /haptava/lib/

WORKDIR /haptava

ENV HAPTAVA_HOME /haptava

ENTRYPOINT ["java", \
            "-Dlog4j.configuration=file:./log4j/shell.log4j.properties", \
            "-jar", "./lib/shell.jar"]

# docker run -it --entrypoint=/bin/bash haptava/shell:0.9.39
# docker run -it haptava/shell:0.9.39 -u fred -p topsecret
