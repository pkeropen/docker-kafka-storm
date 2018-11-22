# This Dockerfile only serves the purpose of consistently tagged images
# https://github.com/wurstmeister/storm-docker
FROM pkeropen3/storm

MAINTAINER pkeropen3
RUN /usr/bin/config-supervisord.sh ui

EXPOSE 8080
CMD /usr/bin/start-supervisor.sh

