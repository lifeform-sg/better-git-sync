FROM alpine

LABEL "repository"="http://github.com/lifeform-sg/better-git-sync"

RUN apk add --no-cache git openssh-client && \
  echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config

ADD *.sh /

ENTRYPOINT ["/entrypoint.sh"]
