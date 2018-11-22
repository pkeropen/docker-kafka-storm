# This Dockerfile only serves the purpose of consistently tagged images
# https://github.com/wurstmeister/storm-docker
FROM pkeropen3/storm

MAINTAINER pkeropen3

EXPOSE 6700
EXPOSE 6701
EXPOSE 6702
EXPOSE 6703
EXPOSE 8000

RUN /usr/bin/config-supervisord.sh supervisor
RUN /usr/bin/config-supervisord.sh logviewer
CMD /usr/bin/start-supervisor.sh
