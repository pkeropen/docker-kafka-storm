FROM maven:3.2.5-jdk-8u40

MAINTAINER pkeropen3

RUN apt-get update && \
    apt-get install -y unzip wget

RUN wget -q -O - http://mirrors.sonic.net/apache/storm/apache-storm-1.0.6/apache-storm-1.0.6.tar.gz | tar -xzf - -C /opt

ENV STORM_HOME /opt/apache-storm-1.0.6

RUN groupadd storm; useradd --gid storm --home-dir /home/storm --create-home --shell /bin/bash storm; chown -R storm:storm $STORM_HOME; mkdir /var/log/storm ; chown -R storm:storm /var/log/storm
RUN ln -s $STORM_HOME/bin/storm /usr/bin/storm

RUN mkdir --parents /usr/src/storm-topology
WORKDIR /usr/src/storm-topology

# Add POM
ADD pom.xml /usr/src/storm-topology

# Get all dependencies
RUN mvn verify clean --fail-never

# Add rest of code & build
ADD . /usr/src/storm-topology
RUN mvn verify

ADD start.sh /usr/src/storm-topology/start.sh
ENTRYPOINT ["/usr/src/storm-topology/start.sh"]
