# This Dockerfile only serves the purpose of consistently tagged images
# https://github.com/wurstmeister/storm-docker
FROM pkeropen3/storm

MAINTAINER pkeropen3

RUN /usr/bin/config-supervisord.sh nimbus 
RUN /usr/bin/config-supervisord.sh drpc

EXPOSE 6627
EXPOSE 3772
EXPOSE 3773
ADD start-supervisor.sh /usr/bin/start-supervisor.sh
CMD /usr/bin/start-supervisor.sh