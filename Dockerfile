FROM node:18-bookworm-slim

LABEL version="1.0.3"
LABEL repository="https://github.com/rong-xiaoli/hexo-action-18"
LABEL homepage="https://rong-xiaoli.github.io"
LABEL maintainer="rong-xiaoli <hashnoob079@163.com>"

COPY entrypoint.sh /entrypoint.sh
COPY sync_deploy_history.js /sync_deploy_history.js

RUN apt-get update > /dev/null && \
    apt-get install -y git openssh-client > /dev/null ; \
    chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
