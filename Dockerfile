FROM docker:27-cli

USER root

RUN apk add --no-cache nodejs npm bash python3 make g++ \
    && npm install -g n8n

EXPOSE 5678

CMD ["n8n"]
